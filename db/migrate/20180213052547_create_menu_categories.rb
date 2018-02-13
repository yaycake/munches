class CreateMenuCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_categories do |t|
      t.text :name
      t.text :description
      t.text :category_photo
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
