class AddTimeOrderedToOrders < ActiveRecord::Migration[5.0]
  def change
    add_column :orders, :time_ordered, :datetime
  end
end
