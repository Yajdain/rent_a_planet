# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
require "open-uri"

puts "Cleaning database..."
PlanetOffer.destroy_all

puts "Creating planets..."


file_terre = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678080/terre_ye8ygo.jpg")
terre = PlanetOffer.new(name: "Terre", title: "La planète bleue", price: 14.5, gravite: 9.80665, superficie: 510, rayon: 6_378.137, location: "149 millions km away from sun")
terre.photo.attach(io: file_terre, filename: "terre.jpg", content_type: "image/jpg")
terre.save

file_mars = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678114/Mars_qsozuo.jpg")
mars = PlanetOffer.new(name: "Mars", title: "La planète rouge", price: 5.6, gravite: 3.721, superficie: 144.8, rayon: 3_389.5, location: "227,9 M km away from sun")
mars.photo.attach(io: file_mars, filename: "mars.jpg", content_type: "image/jpg")
mars.save

file_venus = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678111/Venus_pv3j68.jpg")
venus = PlanetOffer.new(name: "Venus", title: "La planète de l'amour", price: 10.2,  gravite: 8.87, superficie: 460.2, rayon: 6_051.8, location: "108 M km away from sun")
venus.photo.attach(io: file_venus, filename: "venus.jpg", content_type: "image/jpg")
venus.save

file_saturne = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678108/Saturn_Storm_ddcjkt.jpg")
saturne = PlanetOffer.new(name: "Saturne", title: "Les sept anneaux", price: 5.9, gravite: 10.44, superficie: 42.7, rayon: 58_232, location: "5 M km away from sun")
saturne.photo.attach(io: file_saturne, filename: "saturne.jpg", content_type: "image/jpg")
saturne.save

file_pluton = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678105/pluton_mr8ak1.jpg")
pluton = PlanetOffer.new(name: "Pluton", title: "La planète des morts", price: 12.8, gravite: 10.44, superficie: 6_650_000, rayon: 1_188.3, location: "5,913 M away km from sun")
pluton.photo.attach(io: file_pluton, filename: "pluton.jpg", content_type: "image/jpg")
pluton.save

file_neptune = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678098/Neptune_xxokgi.jpg")
neptune = PlanetOffer.new(name: "Neptune", title: "La planète de la mer", price: 7.2, gravite: 3.721, superficie: 144.8, rayon: 3_389.5, location: "227,9 M away km from sun")
neptune.photo.attach(io: file_neptune, filename: "neptune.jpg", content_type: "image/jpg")
neptune.save

file_mercure = URI.open("https://res.cloudinary.com/dyznng8zs/image/upload/v1677678055/mercure_vrtvnh.jpg")
mercure = PlanetOffer.new(name: "Mercure", title: "La planète de l'intelligence", price: 10.3, gravite: 3.7, superficie: 74.8, rayon: 2_439.7, location: "58 M km away from sun")
mercure.photo.attach(io: file_mercure, filename: "mercure.jpg", content_type: "image/jpg")
mercure.save

puts 'Finished!'
