# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

def name_gen
  Faker::Commerce.product_name
end

def code_gen
  Faker::Barcode.upc_a
end

def price_gen
  Faker::Number.decimal l_digits: 2, r_digits: 2
end

def quantity_gen
  Faker::Number.between from: 1, to: 100
end

products = Array.new
(0..10).each { |i|
  products << {
    code: code_gen,
    name: name_gen,
    price: price_gen,
    quantity: quantity_gen
  }
  # puts code_gen
}
Product.create!(products)