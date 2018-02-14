class MenuItem < ApplicationRecord
  belongs_to :menu_subcategory
  belongs_to :menu_category
  belongs_to :menu
  belongs_to :price

end
