class AddMenuSubcategoryToMenuCategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :menu_categories, :menu_subcategory, foreign_key: true
  end
end
