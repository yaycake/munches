class MenuItem < ApplicationRecord
  belongs_to :menu_subcategory, optional: true
  belongs_to :menu_category, optional: true
  belongs_to :menu, optional: true
  belongs_to :price, optional: true
  belongs_to :user, optional: true

  # after_initialize :init

  # def init
  #   self.menu_subcategory ||= none
  # end
end
