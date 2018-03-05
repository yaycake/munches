class AddMenuItemsToMenu < ActiveRecord::Migration[5.0]
  def change
    add_reference :menus, :menu_items, foreign_key: true
  end
end
