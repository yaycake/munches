class Customer < ApplicationRecord
  has_many :addresses
  has_many :phone_numbers
end
