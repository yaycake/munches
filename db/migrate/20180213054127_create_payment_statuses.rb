class CreatePaymentStatuses < ActiveRecord::Migration[5.0]
  def change
    create_table :payment_statuses do |t|
      t.text :status

      t.timestamps
    end
  end
end
