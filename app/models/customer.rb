class Customer < ApplicationRecord
  belongs_to :address
  belongs_to :phone_number
end
