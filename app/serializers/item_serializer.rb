class ItemSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at
end
