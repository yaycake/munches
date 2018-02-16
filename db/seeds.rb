# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'

User.destroy_all
PaymentStatus.destroy_all
PaymentMethod.destroy_all
Price.destroy_all
OrderedItem.destroy_all
MenuItem.destroy_all
MenuSubcategory.destroy_all
MenuCategory.destroy_all
Menu.destroy_all


# - - - - - - users
10.times do #1-10
  User.create({
    first_name: Faker::LordOfTheRings.character,
    email: Faker::Internet.email,
    last_name: Faker::LordOfTheRings.character,
    wechat_id: Faker::Seinfeld.quote,
    permissions: 'customer'
    })
  end


5.times do #11-15
  User.create({
    first_name: 'admin',
    last_name: 'admin',
    permissions: 'admin',
    email: Faker::Internet.email
    })
end

# - - - - - - - -create menu

lunch = Menu.create({
  id: 1,
  name: 'lunch' ,
  description: 'toodly doodly doo'
  })

# - - - - - - - - menu_categories

sandwich = MenuCategory.create({
  id: 1,
  name:'sandwich',
  description: 'yum',
  category_photo: 'imageurl',
  menu_id: 1,
  })

drinks = MenuCategory.create({
  id: 2,
  name: 'drinks',
  description: 'liquiiiid',
  category_photo: 'imageurl',
  menu_id: 1,
  })

sides = MenuCategory.create({
  id: 3,
  name: 'sides',
  description: 'snacks',
  category_photo: 'imageurl',
  menu_id: 1,
  })

# - - - - - - - menu_subcategories

beef = MenuSubcategory.create({
  id: 1,
  name: 'beef',
  menu_category_id: 1
  })

soda = MenuSubcategory.create({
  id: 2,
  name: 'soda',
  menu_category_id:2
  })

el_toro = MenuItem.create({
  id: 1,
  name: 'El Toro',
  description: 'a delicious wich',
  # price_id: 1,
  menu_subcategory_id: 1,
  menu_category_id: 1,
  menu_id: 1
  })

coke = MenuItem.create({
  id: 2,
  name: 'Coke',
  description: 'cocococola',
  # price_id: 2,
  menu_subcategory_id: 2,
  menu_category_id: 1,
  menu_id: 1

  })

fries = MenuItem.create({
  id: 3,
  name: 'Fries',
  description: 'salty mmm',
  # price_id: 3,
  menu_subcategory_id: nil,
  menu_category_id: 3,
  menu_id: 1

  })

eltoroprice = Price.create({
  id: 1,
  price_jr: 30,
  price_regular: 30,
  price_combo:0,
  price_special: nil,
  price_addon: nil,
  menu_item_id: 1
  })

cokeprice = Price.create({
  id: 2,
  price_jr: 10,
  price_regular: 10,
  price_combo:0,
  price_special: nil,
  price_addon: nil,
  menu_item_id: 2
  })

friesprice = Price.create({
  id: 3,
  price_jr: 20,
  price_regular: 20,
  price_combo:0,
  price_special: nil,
  price_addon: nil,
  menu_item_id: 3
  })

# - - - - - - - - menu_items




# - - - - - - prices



# - - - - - - payment_method

wechat = PaymentMethod.create({method: 'wechat'}) #1
alipay = PaymentMethod.create({method: 'alipay'}) #2
visa = PaymentMethod.create({method: 'visa'}) #3


# - - - - - - payment_status

unpaid = PaymentStatus.create({status: 'unpaid'}) #1
paid = PaymentStatus.create({status: 'paid'}) #2

# - - - - - - - discounts

free = Discount.create({name: 'free', amount: '100'}) #1
none = Discount.create({name: 'none', amount: '0'}) #2


# - - - - - order_payment

OrderPayment.create({
  id: 1,
  total: '150',
  fees: '25',
  # payment_status_id: 1,
  # payment_method_id: 2,
  # discount_id: 0,
  # order_id: 1
  })

# - - - - - - - orders

Order.create({
  id: 2,
  user_id: 1,
  order_payment_id: 1
  # order_payment_id: 1,
  # order_status_id: 1
  })



# - - - - -- -- ordered_items

  OrderedItem.create({
    menu_item_id: 1,
    quantity: 1,
    is_combo: nil,
    combo_side: nil,
    combo_drink: nil,
    subtotal: 50,
    order_id: 1
    })

  OrderedItem.create({
    menu_item_id: 2,
    quantity: 1,
    is_combo: nil,
    combo_side: nil,
    combo_drink: nil,
    subtotal: 50,
    order_id: 1
  })

  OrderedItem.create({
    menu_item_id: 3,
    quantity: 1,
    is_combo: nil,
    combo_side: nil,
    combo_drink: nil,
    subtotal: 50,
    order_id: 1
  })


# - - - - - addresses

  Address.create ({
    name: 'home',
    street: '10211 NE 24th',
    city: 'Seattle',
    zipcode: '98004',
    district: 'shopping',
    })

  Address.create ({
    name: 'work',
    street: '690 Monroe Street',
    city: 'NYC',
    zipcode: '11207',
    district: 'shopping',
    })

# - - - - - - phone_numbers

  # PhoneNumbers.create ({
  #   id: 1,
  #   name: 'mobile',
  #   phone_number: '4256880305'
  #   })


