class OrderedItem < ApplicationRecord
  belongs_to :menu_item
  belongs_to :combo_side
  belongs_to :combo_drink
  belongs_to :order


end
