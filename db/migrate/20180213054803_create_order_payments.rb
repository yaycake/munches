class CreateOrderPayments < ActiveRecord::Migration[5.0]
  def change
    create_table :order_payments do |t|
      t.integer :total
      t.integer :fees
      t.references :payment_status, foreign_key: true
      t.references :payment_method, foreign_key: true
      t.datetime :time_paid
      t.references :discount, foreign_key: true
      t.integer :delivery_fee

      t.timestamps
    end
  end
end
