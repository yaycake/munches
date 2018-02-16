class AddComboSideToOrderedItems < ActiveRecord::Migration[5.0]
  def change
    add_column :ordered_items, :combo_side, :string
  end
end
