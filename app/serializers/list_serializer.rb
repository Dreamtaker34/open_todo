# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  permission :boolean
#

class ListSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :created_at, :name, :permission
end
