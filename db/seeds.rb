# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
PlanetOffer.destroy_all

puts "Creating planets..."
terre = { name: "Terre", title: "La planète bleue", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/560px-The_Blue_Marble_%28remastered%29.jpg", price: 14000000, description: "Gravité : 9,806 65 m/s², Superficie : 510 067 420 km², Rayon : 6 378,137km", location: "149 million km away from sun" }
mars = { name: "Mars", title: "La planète rouge", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/3/36/Mars_Valles_Marineris_EDIT.jpg", price: 5000000, description: "Gravité : 3,721 m/s², Superficie : 144,8 millions km², Rayon : 3389,5 km", location: "227,9 million km away from sun" }
venus = { name: "Venus", title: "La planète de l'amour", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg", price: 10000000, description: "Gravité : 8,87 m/s², Superficie : 460,2 millions km², Rayon : 6051,8 km", location: "108 million km away from sun" }
saturne = { name: "Saturne", title: "Les sept anneaux", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/2/29/Saturn_Storm.jpg", price: 5000000, description: "Superficie : 42,7 milliards km², Distance du Soleil : 1,434 milliard km", location: "5 million km away from sun" }
pluton = { name: "Pluton", title: "La planète des morts", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Nh-pluto-in-true-color_2x.jpg/1280px-Nh-pluto-in-true-color_2x.jpg", price: 12000000, description: "Gravité : 0,62 m/s², Superficie : 16 650 000 km2, Rayon : 1188,3 km", location: "5,913 million away km from sun" }
neptune = { name: "Neptune", title: "La planète de la mer", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/0/06/Neptune.jpg", price: 7000000, description: "Gravité : 3,721 m/s², Superficie : 144,8 millions km², Rayon : 3389,5 km", location: "227,9 million away km from sun" }
mercure = { name: "Mercure", title: "La planète de l'intelligence", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/1920px-Mercury_in_color_-_Prockter07_centered.jpg", price: 100000000, description: "Gravité : 3,7 m/s², Superficie : 74,8 millions km², Rayon : 2439,7 km", location: "58 million km away from sun" }

[terre, mars, venus, saturne, pluton, neptune, mercure].each do |attributes|
  planet_offer = PlanetOffer.create!(attributes)
  puts "Created #{planet_offer.name}"
end
puts 'Finished!'
