class RemoveCustomersFromOrders < ActiveRecord::Migration[5.0]
  def change
    remove_reference :orders, :customer, foreign_key: true
  end
end
