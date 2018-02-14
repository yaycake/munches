json.extract! @menu, :id, :name
  json.menu_categories @menu.menu_categories do |menu_category|
    json.extract! menu_category, :name, :description, :menu_subcategories
     json.menu_items menu_category.menu_items do |menu_item|
        json.extract! menu_item, :name, :description, :price
      end
  end
