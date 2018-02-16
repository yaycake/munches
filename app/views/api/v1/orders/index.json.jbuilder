json.array! @orders do |order|
  json.extract! order, :id, :user, :order_payment, :time_ordered, :time_delivered, :order_comments, :order_status, :address

    json.ordered_items order.ordered_items do |ordered_item|
          json.extract! ordered_item, :id, :is_combo, :menu_item
    end
end
