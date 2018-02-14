json.extract! @order, :id
  json.ordered_items @order.ordered_items do |ordered_item|
    json.extract! ordered_item, :is_combo, :quantity, :subtotal, :created_at
      # json.menu_items ordered_item.menu_items do |menu_item|
      #   json.extract! menu_item, :name, :description, :prices
      # end
  end



# json.extract! @menu, :id, :name
#   json.menu_categories @menu.menu_categories do |menu_category|
#     json.extract! menu_category, :name, :description, :menu_subcategories, :menu_items
#   end
