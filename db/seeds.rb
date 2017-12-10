# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
    
Lookup.create(
  [
    {category:"gender", dropdown_value: "Male", order_value: 1},
    {category:"gender", dropdown_value: "Female", order_value: 1}
  ]
)
