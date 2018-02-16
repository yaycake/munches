class RemoveOrderedTimeFromOrders< ActiveRecord::Migration[5.0]
  def change
    remove_column :orders, :ordered_time, :datetime
  end
end
