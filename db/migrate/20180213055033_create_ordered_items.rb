class CreateOrderedItems < ActiveRecord::Migration[5.0]
  def change
    create_table :ordered_items do |t|
      t.references :menu_item, foreign_key: true
      t.text :is_combo
      t.string :combo_side
      t.string  :combo_drink
      t.integer :quantity
      t.integer :subtotal
      t.references :order, foreign_key: true

      t.timestamps
    end
  end
end
