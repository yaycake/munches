class AddMenuCategoryToMenuSubcategory < ActiveRecord::Migration[5.0]
  def change
    add_reference :menu_subcategories, :menu_category, foreign_key: true
  end
end
