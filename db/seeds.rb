# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
TrainingOption.destroy_all
Owner.destroy_all
Horse.destroy_all
Ride.destroy_all

TrainingOption.create(label: "Flat Ride", fee: 30)
TrainingOption.create(label: "Jump School", fee: 50)
TrainingOption.create(label: "Lesson", fee: 75)
TrainingOption.create(label: "Coaching", fee: 125)
TrainingOption.create(label: "Show Ride", fee: 100)

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

Ride.create(date: "4-8-21", horse_id: 1, training_option_id: 2)
Ride.create(date: "4-7-21", horse_id: 2, training_option_id: 1)