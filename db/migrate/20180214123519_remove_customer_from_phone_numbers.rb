class RemoveCustomerFromPhoneNumbers < ActiveRecord::Migration[5.0]
  def change
    remove_reference :phone_numbers, :customer, foreign_key: true
  end
end
