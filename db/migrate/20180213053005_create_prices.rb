class CreatePrices < ActiveRecord::Migration[5.0]
  def change
    create_table :prices do |t|
      t.references :menu_item, foreign_key: true
      t.integer :price_jr
      t.integer :price_regular
      t.integer :price_combo
      t.integer :price_combo_XL
      t.integer :price_special

      t.timestamps
    end
  end
end
