class RemoveTimeAvailableFromMenus < ActiveRecord::Migration[5.0]
  def change
    remove_column :menus, :timeAvailable, :datetime
  end
end
