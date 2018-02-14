class AddMenuCategoryToMenu < ActiveRecord::Migration[5.0]
  def change
    add_reference :menus, :menu_category, foreign_key: true
  end
end
