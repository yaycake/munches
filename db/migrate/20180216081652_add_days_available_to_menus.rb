class AddDaysAvailableToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :days_available, :datetime
  end
end
