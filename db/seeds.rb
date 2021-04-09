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

TrainingOption.create(label: "flat ride", fee: 50)
TrainingOption.create(label: "show ride", fee: 75)

Owner.create(name: "Gilda Piccoli")

Horse.create(name: "Ari", owner_id: 1)
Horse.create(name: "Hans", owner_id: 1)

Ride.create(date: "4-8-21", horse_id: 1, training_option_id: 2)
Ride.create(date: "4-7-21", horse_id: 2, training_option_id: 1)