# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Product.create(
  [
   {
     code: "123",
     name: "test",
     price: 1,
     quantity: '1'
   },
   {
     code: "153",
     name: "test1",
     price: 123,
     quantity: '11'
   }
 ])