class AddUserToDiscounts < ActiveRecord::Migration[5.0]
  def change
    add_reference :discounts, :user, foreign_key: true
  end
end
