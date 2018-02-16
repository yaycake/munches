class AddOrderToOrderPayments < ActiveRecord::Migration[5.0]
  def change
    add_reference :order_payments, :order, foreign_key: true
  end
end
