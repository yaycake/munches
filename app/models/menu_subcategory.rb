class MenuSubcategory < ApplicationRecord
  belongs_to :menu_category
  belongs_to :menu

  has_many :menu_items
end
