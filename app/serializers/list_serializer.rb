# frozen_string_literal: true

# list serializer
class ListSerializer < ActiveModel::Serializer
  attributes :id, :title, :status
  belongs_to :user
  has_many :list_items
end
