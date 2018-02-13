class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.references :order_payment, foreign_key: true
      t.references :customer, foreign_key: true
      t.datetime :ordered_time
      t.datetime :delivered_time
      t.text :order_comments
      t.references :order_status, foreign_key: true
      t.references :address, foreign_key: true
      t.references :phone_number, foreign_key: true

      t.timestamps
    end
  end
end
