class RemoveDaysAvailableFromMenus < ActiveRecord::Migration[5.0]
  def change
    remove_column :menus, :daysAvailable, :datetime
  end
end
