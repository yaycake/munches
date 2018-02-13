class OrderPayment < ApplicationRecord
  belongs_to :payment_status
  belongs_to :payment_method
  belongs_to :discount
end
