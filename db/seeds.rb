# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


require 'faker'


# - - - - - - users
10.times do

  User.create({
    first_name: Faker::LordOfTheRings.character,
    last_name: Faker::LordOfTheRings.character,
    permissions: 'admin'
    })

  end


# - - - - - - - -create menu

lunch = Menu.create([{
  name: 'lunch' ,
  description: 'toodly doodly doo',
  timeAvailable: '12:00',
  timeExpire: '15:00',
  daysAvailable: ["Monday", "Tuesday", "Wednesday"]
  }])

# - - - - - - - - menu_categories

sandwich = MenuCategory.create({
  name: 'sandwich',
  description: 'yum',
  category_photo: 'imageurl',
  menu_id: 1,
  })

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

# - - - - - - customers

10.times do

  Customer.create({
    first_name: Faker::LordOfTheRings.character,
    last_name: Faker::LordOfTheRings.character,
    wechat_id: Faker::Seinfeld.quote,
    })

  end


# - - - - - order_payment



# - - - - - - - orders

# - - - - -- -- ordered_items

# - - - - - addresses

# - - - - - - phone_numbers



