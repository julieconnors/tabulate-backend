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
User.destroy_all

User.create(username: "user", password: "pass")

Service.create(label: "Flat Ride", fee: 30, user_id: 1)
Service.create(label: "Jump School", fee: 50, user_id: 1)
Service.create(label: "Lesson", fee: 75, user_id: 1)
Service.create(label: "Coaching", fee: 125, user_id: 1)
Service.create(label: "Show Ride", fee: 100, user_id: 1)

Owner.create(name: "Gilda Piccoli", user_id: 1)
Owner.create(name: "Jane Fisher", user_id: 1)
Owner.create(name: "Pat Fulchino", user_id: 1)
Owner.create(name: "Tina Allen", user_id: 1)

Horse.create(name: "Ari", owner_id: 1, user_id: 1)
Horse.create(name: "Casper", owner_id: 2, user_id: 1)
Horse.create(name: "Justin", owner_id: 2, user_id: 1)
Horse.create(name: "Uber", owner_id: 3, user_id: 1)
Horse.create(name: "Enzo", owner_id: 3, user_id: 1)
Horse.create(name: "Sonny", owner_id: 4, user_id: 1)

Ride.create(date: "4-8-21", horse_id: 1, service_id: 2)
Ride.create(date: "4-7-21", horse_id: 2, service_id: 1)

