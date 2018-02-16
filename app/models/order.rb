class Order < ApplicationRecord
  belongs_to :order_payment, optional: true
  belongs_to :user, optional: true
  belongs_to :order_status, optional: true
  belongs_to :address, optional: true
  belongs_to :phone_number, optional: true

  has_many :ordered_items

end
