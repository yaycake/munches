class CreateMenuSubcategories < ActiveRecord::Migration[5.0]
  def change
    create_table :menu_subcategories do |t|
      t.text :name
      t.references :menu, foreign_key: true

      t.timestamps
    end
  end
end
