# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
PlanetOffer.destroy_all

puts "Creating planets..."
terre = { name: "Terre", title: "La planète bleue", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/560px-The_Blue_Marble_%28remastered%29.jpg", price: 14,5, gravite: 9,80665, superficie: 510067420, rayon: 6378,137, location: "149 millions km away from sun" }
mars = { name: "Mars", title: "La planète rouge", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/3/36/Mars_Valles_Marineris_EDIT.jpg", price: 5,6, gravite: 3,721, superficie: 144,8, Rayon: 3389,5, location: "227,9 millions km away from sun" }
venus = { name: "Venus", title: "La planète de l'amour", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/e/e5/Venus-real_color.jpg", price: 10,2,  gravite: 8,87, superficie: 460,2, Rayon: 6051,8, location: "108 millions km away from sun" }
saturne = { name: "Saturne", title: "Les sept anneaux", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/2/29/Saturn_Storm.jpg", price: 5,9, gravite: 10,44, superficie: 42,7, rayon: 58232, location: "5 millions km away from sun" }
pluton = { name: "Pluton", title: "La planète des morts", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/7/7e/Nh-pluto-in-true-color_2x.jpg/1280px-Nh-pluto-in-true-color_2x.jpg", price: 12,8, gravite: "Gravité : 0,62 m/s²", superficie: 6650000, rayon: 1188,3, location: "5,913 millions away km from sun" }
neptune = { name: "Neptune", title: "La planète de la mer", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/0/06/Neptune.jpg", price: 7,2, gravite: 3,721, superficie: 144,8, Rayon: 3389,5, location: "227,9 millions away km from sun" }
mercure = { name: "Mercure", title: "La planète de l'intelligence", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/3/30/Mercury_in_color_-_Prockter07_centered.jpg/1920px-Mercury_in_color_-_Prockter07_centered.jpg", price: 10,3, gravite: 3,7, superficie: 74,8, rayon: 2439,7, location: "58 millions km away from sun" }

[terre, mars, venus, saturne, pluton, neptune, mercure].each do |attributes|
  planet_offer = PlanetOffer.create!(attributes)
  puts "Created #{planet_offer.name}"
end
puts 'Finished!'
