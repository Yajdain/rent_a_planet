# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "Cleaning database..."
PlanetOffer.destroy_all

puts "Creating planets..."
terre = { name: "Terre", title: "La planète bleue", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678080/terre_ye8ygo.jpg", price: 14.5, gravite: 9.80665, superficie: 510, rayon: 6_378.137, location: "149 millions km away from sun" }
mars = { name: "Mars", title: "La planète rouge", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678114/Mars_qsozuo.jpg", price: 5.6, gravite: 3.721, superficie: 144.8, rayon: 3_389.5, location: "227,9 millions km away from sun" }
venus = { name: "Venus", title: "La planète de l'amour", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678111/Venus_pv3j68.jpg", price: 10.2,  gravite: 8.87, superficie: 460.2, rayon: 6_051.8, location: "108 millions km away from sun" }
saturne = { name: "Saturne", title: "Les sept anneaux", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678108/Saturn_Storm_ddcjkt.jpg", price: 5.9, gravite: 10.44, superficie: 42.7, rayon: 58_232, location: "5 millions km away from sun" }
pluton = { name: "Pluton", title: "La planète des morts", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678105/pluton_mr8ak1.jpg", price: 12.8, gravite: 10.44, superficie: 6_650_000, rayon: 1_188.3, location: "5,913 millions away km from sun" }
neptune = { name: "Neptune", title: "La planète de la mer", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678098/Neptune_xxokgi.jpg", price: 7.2, gravite: 3.721, superficie: 144.8, rayon: 3_389.5, location: "227,9 millions away km from sun" }
mercure = { name: "Mercure", title: "La planète de l'intelligence", photo: "https://res.cloudinary.com/dyznng8zs/image/upload/v1677678055/mercure_vrtvnh.jpg", price: 10.3, gravite: 3.7, superficie: 74.8, rayon: 2_439.7, location: "58 millions km away from sun" }

[terre, mars, venus, saturne, pluton, neptune, mercure].each do |attributes|
  planet_offer = PlanetOffer.create!(attributes)
  puts "Created #{planet_offer.name}"
end
puts 'Finished!'
