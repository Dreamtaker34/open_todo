# == Schema Information
#
# Table name: lists
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  name       :string
#  permission :integer          default(0)
#

class List < ActiveRecord::Base
  belongs_to :user
  has_many :items, dependent: :destroy

  enum permission: [:open, :closed]

  validates_presence_of :user_id, :name, :permission
end
