class AddComboDrinkToOrderedItems < ActiveRecord::Migration[5.0]
  def change
    add_column :ordered_items, :combo_drink, :string
  end
end
