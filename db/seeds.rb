# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Service.destroy_all
Owner.destroy_all
Horse.destroy_all
Ride.destroy_all

Service.create(label: "Flat Ride", fee: 30)
Service.create(label: "Jump School", fee: 50)
Service.create(label: "Lesson", fee: 75)
Service.create(label: "Coaching", fee: 125)
Service.create(label: "Show Ride", fee: 100)

Owner.create(name: "Gilda Piccoli")
Owner.create(name: "Jane Fisher")
Owner.create(name: "Pat Fulchino")
Owner.create(name: "Tina Allen")

Horse.create(name: "Ari", owner_id: 1)
Horse.create(name: "Casper", owner_id: 2)
Horse.create(name: "Justin", owner_id: 2)
Horse.create(name: "Uber", owner_id: 3)
Horse.create(name: "Enzo", owner_id: 3)
Horse.create(name: "Sonny", owner_id: 4)

Ride.create(date: "4-8-21", horse_id: 1, service_id: 2)
Ride.create(date: "4-7-21", horse_id: 2, service_id: 1)

User.create(username: "user", password: "pass")