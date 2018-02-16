class AddTimeEndToMenus < ActiveRecord::Migration[5.0]
  def change
    add_column :menus, :time_end, :datetime
  end
end
