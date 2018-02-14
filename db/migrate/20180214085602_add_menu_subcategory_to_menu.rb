class AddMenuSubcategoryToMenu < ActiveRecord::Migration[5.0]
  def change
    add_reference :menus, :menu_subcategory, foreign_key: true
  end
end
