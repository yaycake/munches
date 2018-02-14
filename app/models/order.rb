class Order < ApplicationRecord
  belongs_to :order_payment
  belongs_to :user
  belongs_to :order_status
  belongs_to :address
  belongs_to :phone_number

  has_many :ordered_items

end
