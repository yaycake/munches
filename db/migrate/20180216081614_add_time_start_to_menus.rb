class AddTimeStartToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :time_start, :datetime
  end
end
