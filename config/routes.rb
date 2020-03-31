# frozen_string_literal: true

Rails.application.routes.draw do
  scope '/api' do
    resources :lists, except: %i[new edit]
    resources :list_items, only: %i[create update destroy]
  end

  get 'login', to: 'sessions#create'
  get '/logout', to: 'sessions#logout'
  get '/signup', to: 'registrations#create'
end
