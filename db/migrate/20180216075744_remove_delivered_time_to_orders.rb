class RemoveDeliveredTimeToOrders < ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :delivered_time, :datetime
  end
end
