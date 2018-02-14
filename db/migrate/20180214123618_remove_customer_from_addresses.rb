class RemoveCustomerFromAddresses < ActiveRecord::Migration[5.0]
  def change
    remove_reference :addresses, :customer, foreign_key: true
  end
end
