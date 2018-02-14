
# json.array! @menus do |menu|
#   json.extract! menu, :id, :name, :description, :timeAvailable, :timeExpire, :daysAvailable, :user, :menu_categories, :menu_subcategories
# end


json.array! @menus do |menu|

  json.extract! menu, :id, :name, :description, :timeAvailable, :timeExpire, :daysAvailable, :user

  json.menu_categories menu.menu_categories do |menu_category|
    json.extract! menu_category, :name, :description

    json.menu_subcategories menu_category.menu_subcategories do |menu_subcategory|
    json.extract! menu_subcategory, :id, :name
  end
  end





end

