# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  list_id     :integer
#  completed   :boolean          default(FALSE)
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  description :string
#

class ItemSerializer < ActiveModel::Serializer
  attributes :id, :description, :created_at, :list_id
end
