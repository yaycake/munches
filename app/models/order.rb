class Order < ApplicationRecord
  belongs_to :order_payment
  belongs_to :customer
  belongs_to :order_status
  belongs_to :address
  belongs_to :phone_number
end
