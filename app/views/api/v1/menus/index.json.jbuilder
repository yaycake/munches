json.array! @menus do |menu|
  json.extract! menu, :id, :name, :description, :time_start, :time_end, :days_available, :user
end
