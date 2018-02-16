class OrderPayment < ApplicationRecord
  belongs_to :order, optional: true
  has_one :order_payment

end
