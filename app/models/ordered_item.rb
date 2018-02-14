class OrderedItem < ApplicationRecord
  belongs_to :menu_item, optional: true
  belongs_to :order, optional: true


end
