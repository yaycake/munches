class User < ApplicationRecord

  has_many :phone_numbers
  has_many :addresses
end
