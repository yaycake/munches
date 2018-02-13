json.array! @Orders do |order|
  json.extract! order, :id, :customer, :ordered_items, :order_payment, :ordered_time, :delivered_time, :order_comments, :order_status_id, :order_address, :order_phone
end
