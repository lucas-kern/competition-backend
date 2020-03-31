# frozen_string_literal: true

# Session controller
class SessionsController < ApplicationController
  def create
    @user = User.find_by_username(user_params[:username])
    if @user.authenticate user_params[:password]
      session[:user_id] = @user.is
      render json: @user
    else
      render json: { error: 'invalid login attempt' }
    end
  end

  def logout
    session.clear if logged_in?
    render json: { success: true }
  end

  private

  def user_params
    params.require(:userDetails).permit(:username, :password)
  end
end
