class MenuSubcategory < ApplicationRecord
  belongs_to :menu_categories

  has_many :menu_items
end
