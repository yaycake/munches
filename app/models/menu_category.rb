class MenuCategory < ApplicationRecord
  belongs_to :menu, optional: true

  has_many :menu_items
  has_many :menu_subcategories
end
