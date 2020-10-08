# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Removing old planes from the Hangar"

Airplane.destroy_all

puts 'Creating cool airplanes!'

flanker = Airplane.create(model: 'Flanker Su-30', crew: 'Pilot and RIO', image_url: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/76/Sukhoi_Su-30SM_in_flight_2014.jpg/1200px-Sukhoi_Su-30SM_in_flight_2014.jpg")

airbus = Airplane.create(model: 'Airbus 320', crew: 'Pilot, Copilot, Flight Attendants', image_url: "https://i0.wp.com/www.aeroin.net/wp-content/uploads/2020/08/Airbus-A320-Laurent-ERRERA-20083001.jpg?fit=1024%2C683&ssl=1")

bis = Airplane.create(model: '14 Bis', crew: 'Santos Dumont', image_url: "https://adslatin.com/wp-content/uploads/2019/07/santos-dumont-14-bis.jpeg")
