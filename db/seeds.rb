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
Pizza.destroy_all
 
Restaurant.create(name: "Sottocasa NYC",address: "298 Atlantic Ave, Brooklyn, NY 11201")

Restaurant.create(name: "PizzArte",address: "69 W 55th St, New York, NY 10019")

Restaurant.create(name: "San Matteo NYC",address: "1559 2nd Ave, New York, NY 10028")


Pizza.create(name:"Cheese", ingredients:"cheese", restaurant_id:1)
Pizza.create(name:"test5", ingredients:"c", restaurant_id: 2)
Pizza.create(name:"test4", ingredients:"ch", restaurant_id: 3)
Pizza.create(name:"test3", ingredients:"bw", restaurant_id: 1)
Pizza.create(name:"test2", ingredients:"cd", restaurant_id: 2)
Pizza.create(name:"test1", ingredients:"che", restaurant_id: 3)
