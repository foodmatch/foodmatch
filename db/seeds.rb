# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

#locations = [
#  {name: "Penang", lat: 5.35476286324821, long: 100.365466766406, radius: 26},
#  {name: "Hong Kong", lat: 22.275754, long: 114.163056, radius: 35.17936816723013}
#]

#locations.each do |e|
#  Location.create(e)
#end

Food.create(restaurant_id: 1, name: "Nasi Lemak", tags: "Rice, Chicken, Malaysian, Malay, Fried", price: "19.40")
Food.create(restaurant_id: 2, name: "Aglio Olio", tags: "Pasta, Vegetarian, Italian, Pasta, Boil", price: "19.40")
Food.create(restaurant_id: 3, name: "Sushi", tags: "Rice, Seafood, Japanese, Sushi, Raw", price: "19.40")
Food.create(restaurant_id: 4, name: "Ginger Steam Fish", tags: "Red Meat, Lamb, Potato, Pie, Western, Baked", price: "19.40")
Food.create(restaurant_id: 5, name: "Sheperd's Pie", tags: "Red Meat, Beef, Western, Grilled", price: "19.40")
Food.create(restaurant_id: 6, name: "Steak", tags: "Chicken, Pineapple, Cheese, Italian, Pizza, Baked", price: "19.40")
Food.create(restaurant_id: 7, name: "Pizza", tags: "Chicken, Vegetable, Western, Salad, Raw", price: "19.40")
Food.create(restaurant_id: 8, name: "Salad", tags: "Beef, Red Meat, Western, Grilled", price: "19.40")
Food.create(restaurant_id: 9, name: "Burgers", tags: "Noodles, Dumplings, Malaysian, Chinese, Boil", price: "19.40")
Food.create(restaurant_id: 10, name: "Wan Tan Mee", tags: "Rice, Seafood, Spanish, Western, Boil", price: "19.40")
Food.create(restaurant_id: 11, name: "Paella", tags: "Rice, Seafood, Spanish, Western, Boil", price: "19.40")
Food.create(restaurant_id: 12, name: "Char Kuey Teow", tags: "Noodles, Seafood, Malaysian, Chinese, Fried", price: "19.40")
Food.create(restaurant_id: 13, name: "Tom Yum Kung", tags: "Soup, Seafood, Spicy, Thai, Boil", price: "19.40")
Food.create(restaurant_id: 14, name: "Kim Chi Jigae", tags: "Vegetable, Soup, Spicy, Korean, Boil", price: "19.40")
Food.create(restaurant_id: 15, name: "Dosa Curry", tags: "Bread, Curry, Malaysian, Indian, Baked", price: "19.40")

List.create("Rice, Vegetarian")
List.create("Rice, Western, Lamb, Sushi")
List.create("Bread, Noodles, Red Meat")
List.create("Rice, Seafood")