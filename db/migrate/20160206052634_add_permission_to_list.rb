class AddPermissionToList < ActiveRecord::Migration
  def change
    add_column :lists, :permission, :boolean
  end
end
