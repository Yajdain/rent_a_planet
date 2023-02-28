# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:

puts "Cleaning database..."
PlanetOffer.destroy_all

puts "Creating planets..."
terre = { name: "Terre", title: "La planète bleue", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/560px-The_Blue_Marble_%28remastered%29.jpg", price: 14000000, description: "Gravité : 9,806 65 m/s², Superficie : 510 067 420 km², Rayon : 6 378,137km", location: "149 million km away from sun" }
mars = { name: "Mars", title: "La planète rouge", planet_picture: "https://upload.wikimedia.org/wikipedia/commons/3/36/Mars_Valles_Marineris_EDIT.jpg", price: 5000000, description: "Gravité : 3,721 m/s², Superficie : 144,8 millions km², Rayon : 3389,5 km", location: "227,9 million km away from sun" }
venus = { name: "Venus", title: "La planète de l'amour", planet_picture: "https://fr.wikipedia.org/wiki/Vénus_%28planète%29#/media/Fichier:Venus-real_color.jpg", price: 10000000, description: "Gravité : 8,87 m/s², Superficie : 460,2 millions km², Rayon : 6051,8 km", location: "108 million km away from sun" }
saturne = { name: "Saturne", title: "Les sept anneaux", planet_picture: "https://fr.wikipedia.org/wiki/Saturne_%28planète%29#/media/Fichier:Saturn_during_Equinox.jpg", price: 5000000, description: "Superficie : 42,7 milliards km², Distance du Soleil : 1,434 milliard km", location: "5 million km away from sun" }
pluton = { name: "Pluton", title: "La planète des morts", planet_picture: "https://fr.wikipedia.org/wiki/Pluton_%28planète_naine%29#/media/Fichier:Nh-pluto-in-true-color_2x.jpg", price: 12000000, description: "Gravité : 0,62 m/s², Superficie : 16 650 000 km2, Rayon : 1188,3 km", location: "5,913 million away km from sun" }
neptune = { name: "Neptune", title: "La planète de la mer", planet_picture: "https://fr.wikipedia.org/wiki/Pluton_%28planète_naine%29#/media/Fichier:Nh-pluto-in-true-color_2x.jpg", price: 7000000, description: "Gravité : 3,721 m/s², Superficie : 144,8 millions km², Rayon : 3389,5 km", location: "227,9 million away km from sun" }
mercure = { name: "Mercure", title: "La planète de l'intelligence", planet_picture: "https://fr.wikipedia.org/wiki/Mercure_%28planète%29#/media/Fichier:Mercury_in_color_-_Prockter07_centered.jpg", price: 100000000, description: "Gravité : 3,7 m/s², Superficie : 74,8 millions km², Rayon : 2439,7 km", location: "58 million km away from sun" }

[terre, mars, venus, saturne, pluton, neptune, mercure].each do |attributes|
  planet_offer = PlanetOffer.create!(attributes)
  puts "Created #{planet_offer.name}"
end
puts 'Finished!'


# planetoffer = PlanetOffer.create(
#   name: "Mercure",
#   title: "La planète de l'intelligence",
#   description: "Gravité : 3,7 m/s², Superficie : 74,8 millions km², Rayon : 2439,7 km
#   Distance du Soleil : 58 millions de kilomètres",
#   price: "8 millions",
#   planet_picture: 'https://fr.wikipedia.org/wiki/Mercure_%28planète%29#/media/Fichier:Mercury_in_color_-_Prockter07_centered.jpg'




# planetoffer = PlanetOffer.create(
#   name: "Neptune",
#   title: "La planète de la mer",
#   description: "Gravité : 3,721 m/s², Superficie : 144,8 millions km², Rayon : 3389,5 km
#   Distance du Soleil : 227,9 millions km",
#   price: "7 millions",
#   planet_picture: 'https://fr.wikipedia.org/wiki/Neptune_%28planète%29#/media/Fichier:Neptune.jpg'
# planetoffer = PlanetOffer.create(
#   name: "Pluton",
#   title: "La planète des morts",
#   description: "Gravité : 0,62 m/s², Superficie : 16 650 000 km2, Rayon : 1188,3 km
#   Distance du Soleil : 5,913 milliards de km",
#   price: "5 millions",
#   planet_picture: 'https://fr.wikipedia.org/wiki/Pluton_%28planète_naine%29#/media/Fichier:Nh-pluto-in-true-color_2x.jpg'
# )

# planetoffer = PlanetOffer.create(
#   name: "Saturne",
#   title: "Les sept anneaux",
#   description: "Superficie : 42,7 milliards km²
#   Distance du Soleil : 1,434 milliard km
#   Durée du jour : 0j 10h 34m",
#   price: "5 millions",
#   planet_picture: 'https://fr.wikipedia.org/wiki/Saturne_%28planète%29#/media/Fichier:Saturn_during_Equinox.jpg'

# planetoffer = PlanetOffer.create(
#   name: "Venus",
#   title: "La planète de l'amour",
#   description: "Gravité : 8,87 m/s², Superficie : 460,2 millions km², Rayon : 6051,8 km
#   Distance du Soleil : 108 000 000 km",
#   price: "10 millions",
#   planet_picture: 'https://fr.wikipedia.org/wiki/Vénus_%28planète%29#/media/Fichier:Venus-real_color.jpg'


# planetoffer = PlanetOffer.create(
#   name: "Mars",
#   title: "La planète rouge",
#   description:
#   "Gravité : 3,721 m/s²
#   Superficie : 144,8 millions km²
#   Rayon : 3389,5 km
#   Distance du Soleil : 227,9 millions km'",
#   price: "5 millions",
#   planet_picture: 'https://upload.wikimedia.org/wikipedia/commons/3/36/Mars_Valles_Marineris_EDIT.jpg'
# )
# planetoffer = PlanetOffer.create(
#   name: "Terre",
#   title: "La planète bleu",
#   description:
#   "Gravité : 9,806 65 m/s²
#   Superficie : 510 067 420 km²
#   Rayon : 6 378,137km
#   Distance du Soleil : 149 millions km",
#   price: "14 millions",
#   planet_picture: "https://upload.wikimedia.org/wikipedia/commons/thumb/c/cb/The_Blue_Marble_%28remastered%29.jpg/560px-The_Blue_Marble_%28remastered%29.jpg"
# )


# )

# )


# )

# )
