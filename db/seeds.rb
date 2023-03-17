# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).

require "open-uri"

Listing.destroy_all
User.destroy_all

# Users !!
user_one = User.create(first_name: "Amrita", last_name: "Goswami", password: "123456", phone_number: "5647621874982", email: "amritaadc@gmail.com")

user_two = User.create(first_name: "Giovanni", last_name: "Giampaolo", password: "123456", phone_number: "554676880907", email: "giovanni@gmail.com")

user_three = User.create(first_name: "Joaquin", last_name: "Lumaca", password: "123456", phone_number: "3676880907", email: "joaquin@gmail.com")

user_four = User.create(first_name: "John", last_name: "Bennett", password: "123456", phone_number: "44656880907", email: "bennett@gmail.com")

user_five = User.create(first_name: "Atika", last_name: "Gautam", password: "123456", phone_number: "21654530907", email: "atika@gmail.com")

# First listing !!
file = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/f1/e2/bc/photo0jpg.jpg")
file1 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/0c/6f/86/13/20160508-162613-largejpg.jpg")
file2 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/7f/cb/89/photo0jpg.jpg")
file3 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/f1/e2/be/photo2jpg.jpg")
file4 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0e/a5/ba/66/photo1jpg.jpg")

first_seed = Listing.new(
  listing_name: 'The Caféothèque of Paris',
  listing_address: "52 Rue de l'Hôtel de ville, 75004 Paris, France",
  listing_price: 120,
  listing_hours: "09:00 - 22:00",
  listing_amenities: 'Breakfast, Drinks, Takeout, Wheelchair Accessible, Accepts Mastercard, Accepts Visa, Seating, Accepts Credit Cards, Table Service',
  listing_description: 'Coffee Shop, Roasting, Specialty Coffees from around the world, single origin. You also can eat a small meal, and delicious home-made cakes.',
)
# main picture
first_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# secondary pictures
first_seed.photos.attach(io: file1, filename: "nes1.png", content_type: "image/png")
first_seed.photos.attach(io: file2, filename: "nes2.png", content_type: "image/png")
first_seed.photos.attach(io: file3, filename: "nes3.png", content_type: "image/png")
first_seed.photos.attach(io: file4, filename: "nes4.png", content_type: "image/png")

first_seed.user = user_one
first_seed.save

# Second listing !!
file5 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0a/b8/1b/5b/img-20160327-151145-largejpg.jpg")
file6 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/13/80/e9/db/terres-de-cafe-40-rue.jpg")
file7 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/13/80/e9/ab/terres-de-cafe-40-rue.jpg")
file8 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/13/80/e9/7b/terres-de-cafe-40-rue.jpg")
file9 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/17/a3/8a/bb/la-boutique-flagship.jpg")

second_seed = Listing.new(
  listing_name: 'Terres de Cafe',
  listing_address: '14 Rue Rambuteau, 75003 Paris, France',
  listing_price: 100,
  listing_hours: "10:00 - 22:00",
  listing_amenities: "Drinks, Seating, Highchairs Available, Accepts Credit Cards",
  listing_description: "Situated in the heart of the Marais, Terres de café is a coffee shop that offers you great specialty coffee. Expressos, cappuccinos, macchiatos and americanos are served by our best baristas in a cosy atmosphere. Specialty coffees are the best batches of coffee from farms or local cooperatives. They are fully traceable (botanical variety, region, plot) and respect demanding processing methods. This guarantees exceptional quality in the cup. At Terres de Café, roasting is 100% performed in France. Christophe Servell, Terres de cafe's founder, was elected best roaster in France in 2015.",
)
# main picture
second_seed.photo.attach(io: file5, filename: "a.png", content_type: "image/png")
# secondary pictures
second_seed.photos.attach(io: file6, filename: "a1.png", content_type: "image/png")
second_seed.photos.attach(io: file7, filename: "a2.png", content_type: "image/png")
second_seed.photos.attach(io: file8, filename: "a3.png", content_type: "image/png")
second_seed.photos.attach(io: file9, filename: "a4.png", content_type: "image/png")

second_seed.user = user_two
second_seed.save

# Third listing !!
file10 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0c/54/64/c8/ca.jpg")
file11 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0f/6a/96/c9/ouvert-sur-un-petit-jardin.jpg")
file12 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0f/6a/91/b7/lumineux-et-ouvert-sur.jpg")
file13 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0f/6a/92/b2/lumineux-et-ouvert-sur.jpg")
file14 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0d/48/44/7c/la-cantine-de-merci-situee.jpg")

third_seed = Listing.new(
  listing_name: 'Merci Cine Cafe',
  listing_address: '111 boulevard Beaumarchais Rez de Jardin, 75003 Paris, France',
  listing_price: 145,
  listing_hours: "10:00 - 20:00",
  listing_amenities: 'Delivery, Takeout, Reservations, Highchairs Available, Wheelchair Accessible, Seating, Serves Alcohol, Wine and Beer, Accepts American Express, Accepts Mastercard, Accepts Visa, Table Service',
  listing_description: "Merci was created in March 2009, in the heart of the historic Haut-Marais district. The founders, Bernard and Marie-France Cohen, realised that Paris lacked a place which brought together the best in fashion, design, household goods, and friendly eating options. Merci's aim is to bring together, under one roof, products and customers who traditionally have not had the chance to meet : vintage furniture or contemporary creations; emerging new fashion brands or already-recognised collections; impulse buys, affordable for all or much rarer pieces, sometimes in limited editions.",
)
# main picture
third_seed.photo.attach(io: file10, filename: "b.png", content_type: "image/png")
# Secondary pictures
third_seed.photos.attach(io: file11, filename: "b1.png", content_type: "image/png")
third_seed.photos.attach(io: file12, filename: "b2.png", content_type: "image/png")
third_seed.photos.attach(io: file13, filename: "b3.png", content_type: "image/png")
third_seed.photos.attach(io: file14, filename: "b4.png", content_type: "image/png")

third_seed.user = user_three
third_seed.save


# Fourth listing !!
file15 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/18/5e/35/79/vue-de-la-salle.jpg")
file16 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/18/5e/35/5a/vue-de-la-salle.jpg")
file17 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/18/61/28/2b/dejeuner-en-terrasse.jpg")
file18 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/13/74/d2/22/photo1jpg.jpg")
file19 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0a/b1/d5/f2/photo1jpg.jpg")

fourth_seed = Listing.new(
  listing_name: 'Restaurante Goya Gallery',
  listing_address: 'Burriana, 3, 46005, Valencia, Spain',
  listing_price: 150,
  listing_hours: "14:00 - 22:00",
  listing_amenities: "Serves Alcohol, Reservations, Seating, Wheelchair Accessible, Wine and Beer, Accepts Mastercard, Accepts Visa, Digital Payments, Accepts Credit Cards, Table Service, Delivery, Takeout, Full Bar, Free Wifi",
  listing_description: "Freshly made paellas seasoned with the memories of travels and a pinch of Mediterranean. We select only the best organic products through the seasons. Everything is homemade in our kitchen and prepared everyday by our cooks with love and passion. We'll take good care of you."
)
# main picture
fourth_seed.photo.attach(io: file15, filename: "c.png", content_type: "image/png")
# Secondary pictures
fourth_seed.photos.attach(io: file16, filename: "c1.png", content_type: "image/png")
fourth_seed.photos.attach(io: file17, filename: "c2.png", content_type: "image/png")
fourth_seed.photos.attach(io: file18, filename: "c3.png", content_type: "image/png")
fourth_seed.photos.attach(io: file19, filename: "c4.png", content_type: "image/png")

fourth_seed.user = user_four
fourth_seed.save

# Fifth Listing
file20 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/27/ac/3f/d8/bioburger-victoire.jpg")
file21 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/ac/52/9b/burgers-original-et-morbier.jpg")
file22 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/ac/3f/f0/menu-double-bacon.jpg")
file23 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/ac/3f/db/bioburger-victoire.jpg")
file24 = URI.open("https://media-cdn.tripadvisor.com/media/photo-m/1280/1d/59/ea/dd/l-entre-du-restaurant.jpg")

fifth_seed = Listing.new(
  listing_name: 'Bioburger - Victoire',
  listing_address: '10 rue de la Victoire, 75009 Paris, France',
  listing_price: 125,
  listing_hours: "11:00 - 22:00",
  listing_amenities: 'Delivery, Takeout, Seating, Accepts Mastercard, Accepts Visa, Accepts Credit Cards',
  listing_description: "We mainly offer burgers and fries for everyone, served quickly with a smile and kindness, at affordable prices and in continuous service! (burger + fries + drink from € 9.90). All our products and our restaurants are 100% organic certified. We offer you truth, confidence, simplicity ... and a good slice of fun in a restaurant open from day to night"
)
# main picture
fifth_seed.photo.attach(io: file20, filename: "d.png", content_type: "image/png")
# Secondary pictures
fifth_seed.photos.attach(io: file21, filename: "d1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file22, filename: "d2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file23, filename: "d3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file24, filename: "d4.png", content_type: "image/png")

fifth_seed.user = user_five
fifth_seed.save!

# Sixth Listing
file25 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/09/e3/a5/62/vitrine-de-noel.jpg")
file26 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/09/e3/a5/63/bar-a-vins.jpg")
file27 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0c/f1/a5/0d/les-epiciers.jpg")
file28 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/1d/72/44/ec/caption.jpg")
file29 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/15/46/38/79/les-epiciers.jpg")

fifth_seed = Listing.new(
  listing_name: 'Les Epiciers',
  listing_address: '33 rue de Montmorency, 75003 Paris, France',
  listing_price: 160,
  listing_hours: "15:00 - 23:00",
  listing_amenities: 'Takeout, Reservations, Seating, Wheelchair Accessible, Serves Alcohol, Wine and Beer, Accepts Mastercard, Accepts Visa, Digital Payments, Accepts Credit Cards, Table Service, Free Wifi',
  listing_description: "A typically french wine bar, 'LES EPICIERS' is the place for tasting cheese and ham platters served with tasty wines selected by the owners themselves. The atmosphère is very cosy and you will rapidly feel like at home As the shop also works as a french deli it is possible to buy and take away typical french products."
)
# main picture
fifth_seed.photo.attach(io: file25, filename: "e.png", content_type: "image/png")
# Secondary pictures
fifth_seed.photos.attach(io: file26, filename: "e1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file27, filename: "e2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file28, filename: "e3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file29, filename: "e4.png", content_type: "image/png")

fifth_seed.user = user_five
fifth_seed.save!

# Listing 7
file30 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/12/39/d8/14/un-bel-espace-lumineux.jpg")
file31 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/12/39/d8/6a/de-delicieuses-patisseries.jpg")
file32 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/12/39/d8/5e/les-cafes-sont-prepares.jpg")
file33 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/12/39/d8/46/des-petits-coins-cosy.jpg")
file34 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/15/82/97/a0/la-compagnie-du-cafe.jpg")

fifth_seed = Listing.new(
  listing_name: 'La Compagnie du Cafe',
  listing_address: '19 rue Notre Dame de Lorette, 75009 Paris, France',
  listing_price: 105,
  listing_hours: "11:00 - 20:00",
  listing_amenities: 'Breakfast, Lunch, Brunch, Drinks, Seating, Table Service, Takeout',
  listing_description: "La Compagnie du Café is a coffee shop, coffee roaster and a lunch cantine. Open 7 days a week, we serve all day house roasted coffee, home made food with many veggie options & pastries: breakfast, lunch & coffee break. On sunday, we propose an amazing brunch with veggie options. Needless to say that you can buy here our selection of delicious house roasted coffee (1kg or 250gr)"
)
# main picture
fifth_seed.photo.attach(io: file30, filename: "f.png", content_type: "image/png")
# Secondary pictures
fifth_seed.photos.attach(io: file31, filename: "f1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file32, filename: "f2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file33, filename: "f3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file34, filename: "f4.png", content_type: "image/png")

fifth_seed.user = user_three
fifth_seed.save!

# Listing 8
file35 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/d1/29/b8/pan-fried-cod-parsnip.jpg")
file36 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/16/74/49/96/patrice-damien-et-philippe.jpg")
file37 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/ed/78/eb/clementine-cream-infused.jpg")
file38 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/27/d1/29/b8/pan-fried-cod-parsnip.jpg")
file39 = URI.open("https://media-cdn.tripadvisor.com/media/photo-o/16/74/4b/9b/les-saisons.jpg")

fifth_seed = Listing.new(
  listing_name: 'Les Saisons',
  listing_address: '52 rue Lamartine, 75009 Paris, France',
  listing_price: 150,
  listing_hours: "10:00 - 23:00",
  listing_amenities: 'Highchairs Available, Free Wifi, Reservations, Seating, Serves Alcohol, Accepts Mastercard, Accepts Visa, Accepts Credit Cards, Table Service, Gift Cards Available',
  listing_description: "Depuis novembre 2017, une nouvelle équipe a repris le restaurant Les Saisons, situé rue Lamartine, au cœur du 9e arrondissement de Paris. Ils ont le plaisir de proposer des classiques de la cuisine française revisités à une clientèle de quartier et internationale toujours plus nombreuse. Ce lieu bien connu des habitants du 9e est aujourd'hui dirigé par Patrice Le Nouvel, ancien directeur du restaurant du Meurice, et Philippe Fréjat."
)
# main picture
fifth_seed.photo.attach(io: file35, filename: "g.png", content_type: "image/png")
# Secondary pictur6
fifth_seed.photos.attach(io: file36, filename: "g1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file37, filename: "g2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file38, filename: "g3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file39, filename: "g4.png", content_type: "image/png")

fifth_seed.user = user_three
fifth_seed.save!

# Listing 9
file40 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/0f/bb/4f/aa/le-restaurant.jpg")
file41 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/24/0a/41/02/isana.jpg")
file42 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/75/b6/0b/croquant-noisette-agrume.jpg")
file43 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/11/75/b1/c0/isana-by-night.jpg")
file44 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/0f/bb/47/d7/ceviche-de-rascasse-sauvage.jpg")

fifth_seed = Listing.new(
  listing_name: 'ISANA',
  listing_address: '7 rue Bourdaloue, 75009 Paris, France',
  listing_price: 165,
  listing_hours: "13:00 - 22:00",
  listing_amenities: 'Takeout, Reservations, Seating, Serves Alcohol, Wine and Beer, Accepts Mastercard, Accepts Visa, Free Wifi, Accepts Credit Cards, Table Service, Delivery, Buffet, Highchairs Available, Full Bar, Accepts American Express, Family style',
  listing_description: "ISANA is a restaurant that proposes a trip to the flavour of South America so when you come to ISANA, you will eat some ceviches from Peru, some carnitas from Mexico or some empanadas from Argentina. The food is fresh and healthy, the place is colourful and lively. On Sunday, we propose a great brunch that makes you travel around South America. Come to celebrate New Year with us! We have a great menu with South American taste! You can have a look on our events and menus on our website. Nos vemos pronto;)"
)
# main picture
fifth_seed.photo.attach(io: file40, filename: "h.png", content_type: "image/png")
# Secondary pictur6
fifth_seed.photos.attach(io: file41, filename: "h1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file42, filename: "h2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file43, filename: "h3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file44, filename: "h4.png", content_type: "image/png")

fifth_seed.user = user_two
fifth_seed.save!

# Listing 10
file45 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/20/d6/a2/3c/caption.jpg")
file46 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/21/c6/0a/79/burrata-et-caponata-sicilienne.jpg")
file47 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/21/c6/07/89/mozzarella-di-bufala.jpg")
file48 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/19/4a/e2/5f/notre-assiette-de-legumes.jpg")
file49 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/19/4a/df/a9/notre-belle-burrata.jpg")

fifth_seed = Listing.new(
  listing_name: "Domenico's",
  listing_address: '8 rue Saint Lazare, 75009 Paris, France',
  listing_price: 140,
  listing_hours: "11:00 - 23:00",
  listing_amenities: 'Takeout, Reservations, Outdoor Seating, Seating, Serves Alcohol, Free Wifi, Accepts Credit Cards, Table Service, Street Parking, Wine and Beer, Digital Payments, Dog Friendly, Family style, Non-smoking restaurants',
  listing_description: "Niché en plein cœur du 9eme arrondissement de Paris, à mi-chemin entre Pigalle et la Gare Saint Lazare, Domenico's propose des recettes traditionnelles siciliennes et du sud de l'Italie remises au goût du jour."
)
# main picture
fifth_seed.photo.attach(io: file45, filename: "i.png", content_type: "image/png")
# Secondary pictur6
fifth_seed.photos.attach(io: file46, filename: "i1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file47, filename: "i2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file48, filename: "i3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file49, filename: "i4.png", content_type: "image/png")

fifth_seed.user = user_one
fifth_seed.save!

# Listing 11
file50 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/25/14/1e/a1/photo-de-l-interieur.jpg")
file51 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/14/e5/4d/ec/lorette-les-garcons.jpg")
file52 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/17/1c/bc/5f/photo1jpg.jpg")
file53 = URI.open("https://media-cdn.tripadvisor.com/media/photo-p/1c/27/8d/49/la-piece-du-boucher-sauce.jpg")
file54 = URI.open("https://media-cdn.tripadvisor.com/media/photo-w/24/86/4b/9f/restaurant.jpg")

fifth_seed = Listing.new(
  listing_name: "Lorette",
  listing_address: 'Rue Saint Lazare, 75009 Paris, France',
  listing_price: 135,
  listing_hours: "10:00 - 23:00",
  listing_amenities: 'Reservations, Outdoor Seating, Seating, Serves Alcohol, Accepts Credit Cards, Table Service, Wine and Beer',
  listing_description: "On the menu, no fake but essential dishes, authentic and tasty French cuisine. Old-fashioned mayo eggs, string salmon with brioche bread or crispy chicken salad, followed by sausage puree, steak or fillet of bar accompanied by chorizo ​​black rice. And finally be tempted by the profiteroles sprinkled with hot chocolate instead or the already famous French toast."
)
# main picture
fifth_seed.photo.attach(io: file50, filename: "j.png", content_type: "image/png")
# Secondary pictur6
fifth_seed.photos.attach(io: file51, filename: "j1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file52, filename: "j2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file53, filename: "j3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file54, filename: "j4.png", content_type: "image/png")

fifth_seed.user = user_one
fifth_seed.save!
