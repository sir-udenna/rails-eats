# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# remember to change values to actual resturaunt 
# for quick testing purposes
restaurants = [
    {
        "name": "Example Restaurant",
        "location": "1425 Example Location ln",
        "picture": "example.png",
        "food_type": "example food type",
        "description": "example description"
    },
    {
        "name": "Example Restaurant",
        "location": "1425 Example Location ln",
        "picture": "example.png",
        "food_type": "example food type",
        "description": "example description"
    },
    {
        "name": "Example Restaurant",
        "location": "1425 Example Location ln",
        "picture": "example.png",
        "food_type": "example food type",
        "description": "example description"
    },
    {
        "name": "Example Restaurant",
        "location": "1425 Example Location ln",
        "picture": "example.png",
        "food_type": "example food type",
        "description": "example description"
    },
    {
        "name": "Example Restaurant",
        "location": "1425 Example Location ln",
        "picture": "example.png",
        "food_type": "example food type",
        "description": "example description"
    },
]

User.destroy_all
Restaurant.destroy_all
Favorite.destroy_all

User.create(name: 'Udenna', email: 'udennaboy@gmail.com', password:'udenna')
User.create(name: 'testuser1', email: 'testuser1@test.com', password:'test')

restaurants.each do |restaurant|
    Restaurant.create(name: restaurant[:name], location: restaurant[:location], picture: restaurant[:picture], food_type: restaurant[:food_type], description: restaurant[:description])
end


Favorite.create(geo: 'none', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 
Favorite.create(geo: '1', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 
Favorite.create(geo: '2', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 
Favorite.create(geo: '3', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 
Favorite.create(geo: '4', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 
Favorite.create(geo: '5', restaurant_id: Restaurant.all.sample.id, user_id: User.all.sample.id) 

