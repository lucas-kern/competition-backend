# frozen_string_literal: true

# user serializer
class UserSerializer < ActiveModel::Serializer
  attributes :username
  has_many :lists
end
