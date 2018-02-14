class RemoveComboDrinkFromOrderedItems < ActiveRecord::Migration[5.0]
  def change
    remove_column :ordered_items, :combo_drink, :string
  end
end
