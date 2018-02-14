# json.extract! @menu, :id, :name
# json.menu_categories @menu.menu_categories do |menu_category|
#   json.extract! menu_subcategory, :id, :name
# end


json.extract! @menu, :id, :name
json.menu_categories @menu.menu_categories do |menu_category|
    json.extract! menu_category, :name, :description, :menu_subcategories, :menu_items
  end
