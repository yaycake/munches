class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.text :name
      t.integer :amount

      t.timestamps
    end
  end
end
