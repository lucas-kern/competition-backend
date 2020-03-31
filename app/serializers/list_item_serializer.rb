# frozen_string_literal: true

# list item serializer
class ListItemSerializer < ActiveModel::Serializer
  attributes :id, :name, :quantity, :status
  belongs_to :user
  has_many :list_items
end
