# json.array! @menus do |menu|

#   json.extract! menu, :id, :name, :description, :time_start, :time_end, :days_available, :user

#   json.menu_categories menu.menu_categories do |menu_category|
#     json.extract! menu_category, :name, :description

#     json.menu_subcategories menu_category.menu_subcategories do |menu_subcategory|
#       json.extract! menu_subcategory, :id, :name

#         json.menu_items menu_subcategory.menu_items do |menu_item|
#           json.extract! menu_item, :id, :name, :description, :can_combo, :price
#     end

#   end

# end
# end


json.array! @menus do |menu|

  json.extract! menu, :id, :name, :description, :time_start, :time_end, :days_available, :menu_categories, :menu_subcategories, :menu_items

end
