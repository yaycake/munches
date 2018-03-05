class Menu < ApplicationRecord

  belongs_to :user, optional: true

  has_many :menu_categories
  has_many :menu_subcategories
  has_many :menu_items

end
