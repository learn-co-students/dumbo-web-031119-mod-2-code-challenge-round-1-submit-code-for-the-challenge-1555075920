# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#
#   1
Restaurant.destroy_all

Restaurant.create!([{
  name: "Sottocasa NYC",
  address: "298 Atlantic Ave, Brooklyn, NY 11201",
},
{
  name: "PizzArte",
  address: "69 W 55th St, New York, NY 10019",
},
{
  name: "San Matteo NYC",
  address: "1559 2nd Ave, New York, NY 10028"
}])

Pizza.create(name: "yumyum", ingredients: "cheese, cheese, cheese, more cheese",restaurant_id: 1)
Pizza.create(name: "el yumo", ingredients: "queso queso queso y mas queso" , restaurant_id: 2)
Pizza.create(name: "peps", ingredients:"all the ronis, and cheese" , restaurant_id: 3 )
Pizza.create(name: "gross" , ingredients: "anchovies and onions" , restaurant_id: 1 )
Pizza.create(name:  "supreme", ingredients: "lots o meat and veg" , restaurant_id: 2 )
Pizza.create(name: "the mystery", ingredients: "who knows, we dont, just eat it", restaurant_id: 3 )
