json.array! @orders do |order|
  json.extract! order, :id, :customer, :order_payment, :ordered_time, :delivered_time, :order_comments, :order_status, :address, :phone_number

    json.ordered_items order.ordered_items do |ordered_item|
          json.extract! ordered_item, :id, :is_combo, :menu_item
    end
end
