# json.array! @menus do |menu|
#   json.extract! menu, :id, :name, :description, :timeAvailable, :timeExpire, :daysAvailable, :user, :menu_categories
# end

# json.array! @menu_categories do |menu_category|
#   json.extract! menu_category, :menu_subcategories
# end


json.extract! @menu, :id, :name
json.menu_categories @menu.menu_categories do |menu_category|
    json.extract! menu_category, :name, :description, :menu_items, :menu_subcategories
  end
