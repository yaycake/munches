class AddPriceToMenuItems < ActiveRecord::Migration[5.0]
  def change
    add_reference :menu_items, :price, foreign_key: true
  end
end
