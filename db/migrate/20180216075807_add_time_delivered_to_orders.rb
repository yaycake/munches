class AddTimeDeliveredToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :time_delivered, :datetime
  end
end
