class AddPriceAddonToPrices < ActiveRecord::Migration[5.0]
  def change
    add_column :prices, :price_addon, :integer
  end
end
