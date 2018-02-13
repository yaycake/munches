class Menu < ApplicationRecord
  belongs_to :user

  has_many :menu_categories
  has_many :menu_subcategories
end
