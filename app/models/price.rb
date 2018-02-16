class Price < ApplicationRecord
  belongs_to :menu_item, optional: true
end
