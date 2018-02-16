class MenuSubcategory < ApplicationRecord
  belongs_to :menu_category, optional: true
  belongs_to :menu, optional: true

  has_many :menu_items
end
