# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open-uri"

Listing.destroy_all
User.destroy_all

user_seed = User.create(first_name: "Amrita", last_name: "Goswami", password: "123456", phone_number: "5647621874982", email: "amritaadc@gmail.com")

file = URI.open("https://www.kempinski.com/var/site/storage/images/1/2/9/6/86921-1-eng-GB/22f6d4d81e84-73660551_4K.jpg")
file1 = URI.open("https://im1.dineout.co.in/images/uploads/restaurant/sharpen/6/y/t/p60213-16645391636336da1b89ad3.jpg?w=400")
file2 = URI.open("https://imageio.forbes.com/specials-images/imageserve/637d35b58792833e25c808ae/0x0.jpg?format=jpg&width=400")
file3 = URI.open("https://images.pexels.com/photos/735869/pexels-photo-735869.jpeg?auto=compress&cs=tinysrgb&w=400")
file4 = URI.open("https://images.pexels.com/photos/67468/pexels-photo-67468.jpeg?auto=compress&cs=tinysrgb&w=400")
first_seed = Listing.new(
  listing_name: 'Basecamp',
  listing_address: 'Halden, Norway',
  listing_amenities: 'WiFi',
  listing_description: 'Centrally located in Longyearbyen, Basecamp Hotel is a traditional trappers lodge-style property just 15 minutes drive from Longyearbyen Airport.',
)
# main picture
first_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# secondary pictures
first_seed.photos.attach(io: file1, filename: "nes1.png", content_type: "image/png")
first_seed.photos.attach(io: file2, filename: "nes2.png", content_type: "image/png")
first_seed.photos.attach(io: file3, filename: "nes3.png", content_type: "image/png")
first_seed.photos.attach(io: file4, filename: "nes4.png", content_type: "image/png")

first_seed.user = user_seed
first_seed.save


second_user = User.create(first_name: "Giovanni", last_name: "Giampaolo", password: "123456", phone_number: "554676880907", email: "giovanni@gmail.com")


file5 = URI.open("https://thumbs.dreamstime.com/b/typical-italian-restaurant-historic-alley-assisi-italy-42678646.jpg")
file6 = URI.open("https://thumbs.dreamstime.com/b/cioppino-681734.jpg")
file7 = URI.open("https://thumbs.dreamstime.com/b/italian-restaurant-23338098.jpg")
file8 = URI.open("https://thumbs.dreamstime.com/b/italian-restaurant-19437569.jpg")
file9 = URI.open("https://thumbs.dreamstime.com/b/restaurant-interior-18906847.jpg")

second_seed = Listing.new(
  listing_name: 'Bardolino',
  listing_address: 'Veneto, Italy',
  listing_amenities: 'WiFi, Garden, TV display',
  listing_description: 'Reservations | Outdoor Seating | Private Dining | Seating | Parking Available | Valet Parking | Highchairs Available | Wheelchair Accessible | Serves Alcohol | Full Bar | Accepts Credit Cards | Table Service',
)
# main picture
second_seed.photo.attach(io: file5, filename: "a.png", content_type: "image/png")
# secondary pictures
second_seed.photos.attach(io: file6, filename: "a1.png", content_type: "image/png")
second_seed.photos.attach(io: file7, filename: "a2.png", content_type: "image/png")
second_seed.photos.attach(io: file8, filename: "a3.png", content_type: "image/png")
second_seed.photos.attach(io: file9, filename: "a4.png", content_type: "image/png")

second_seed.user = second_user
second_seed.save

third_user = User.create(first_name: "Joaquin", last_name: "Lumaca", password: "123456", phone_number: "3676880907", email: "joaquin@gmail.com")

file10 = URI.open("https://thumbs.dreamstime.com/b/poble-espanyol-barcelona-spain-traditional-architectures-56062768.jpg")
file11 = URI.open("https://thumbs.dreamstime.com/b/delicious-beef-wine-2101249.jpg")
file12 = URI.open("https://thumbs.dreamstime.com/b/glasses-cold-sangria-wine-served-outdoor-bar-view-old-street-san-sebastian-basque-country-spain-summer-255997428.jpg")
file13 = URI.open("https://thumbs.dreamstime.com/b/olives-olive-oil-29212397.jpg")
file14 = URI.open("https://thumbs.dreamstime.com/b/tapas-bar-barcelona-august-customers-seated-la-boqueria-market-barcelona-spain-augut-market-one-oldest-44116965.jpg")

third_seed = Listing.new(
  listing_name: 'Viana',
  listing_address: 'Barcelona, Spain',
  listing_amenities: 'WiFi, TV display',
  listing_description: 'Located in an area that is best known for its nightlife, Viana is one of the most popular restaurants in Gothic Quarter. This restaurant serves Spanish and international food as well as cocktails. This is a small restaurant with a bar inside so you might have to wait a little while to get a table. It is recomme',
)
# main picture
third_seed.photo.attach(io: file10, filename: "b.png", content_type: "image/png")
# Secondary pictures
third_seed.photos.attach(io: file11, filename: "b1.png", content_type: "image/png")
third_seed.photos.attach(io: file12, filename: "b2.png", content_type: "image/png")
third_seed.photos.attach(io: file13, filename: "b3.png", content_type: "image/png")
third_seed.photos.attach(io: file14, filename: "b4.png", content_type: "image/png")

third_seed.user = third_user
third_seed.save

fourth_user = User.create(first_name: "John", last_name: "Bennett", password: "123456", phone_number: "44656880907", email: "bennett@gmail.com")

file15 = URI.open("https://thumbs.dreamstime.com/b/world-s-end-pub-camden-high-street-town-london-uk-july-pubs-big-part-british-culture-171471716.jpg")
file16 = URI.open("https://thumbs.dreamstime.com/b/people-pub-camden-market-london-uk-july-enjoying-their-time-inside-pubs-social-drinking-establishment-prominent-171472876.jpg")
file17 = URI.open("https://thumbs.dreamstime.com/b/two-pints-beer-typically-traditional-british-pub-ale-table-english-107183618.jpg")
file18 = URI.open("https://thumbs.dreamstime.com/b/inside-view-english-public-house-known-as-pub-london-april-interior-drinking-socializing-focal-point-community-196966373.jpg")
file19 = URI.open("https://thumbs.dreamstime.com/b/glass-beers-local-pub-low-angle-view-52467229.jpg")

fourth_seed = Listing.new(
  listing_name: ' Worlds End',
  listing_address: '174 Camden High St, Camden Town',
  listing_amenities: 'Wi-Fi, Live Music',
  listing_description: 'The Worlds End is a landmark pub in Camden Town and is known throughout the UK for its rock music-loving customers.The Londons largest pub over the years.')
# main picture
fourth_seed.photo.attach(io: file15, filename: "c.png", content_type: "image/png")
# Secondary pictures
fourth_seed.photos.attach(io: file16, filename: "c1.png", content_type: "image/png")
fourth_seed.photos.attach(io: file17, filename: "c2.png", content_type: "image/png")
fourth_seed.photos.attach(io: file18, filename: "c3.png", content_type: "image/png")
fourth_seed.photos.attach(io: file19, filename: "c4.png", content_type: "image/png")

fourth_seed.user = fourth_user
fourth_seed.save

fifth_user = User.create(first_name: "Atika", last_name: "Gautam", password: "123456", phone_number: "21654530907", email: "atika@gmail.com")

file20 = URI.open("https://thumbs.dreamstime.com/b/interiors-fashion-themed-inspired-runway-project-restaurant-delhi-india-runway-project-restaurant-delhi-india-182374763.jpg")
file21 = URI.open("https://thumbs.dreamstime.com/b/interiors-fashion-themed-inspired-runway-project-restaurant-delhi-india-runway-project-restaurant-delhi-india-179141733.jpg")
file22 = URI.open("https://thumbs.dreamstime.com/b/local-vegetarian-food-buffet-service-people-eat-restaurant-room-resort-hotel-new-delhi-india-city-155784143.jpg")
file23 = URI.open("https://thumbs.dreamstime.com/b/indian-full-course-meal-served-kadhai-paneer-butter-roti-spiced-curd-green-salad-restaurant-new-delhi-india-257027015.jpg")
file24 = URI.open("https://thumbs.dreamstime.com/b/interiors-fashion-themed-inspired-runway-project-restaurant-delhi-india-179141632.jpg")

fifth_seed = Listing.new(
  listing_name: 'DelhiSpice',
  listing_address: ' 4925 BETHESDA AVE, BETHESDA, MD 20814, US',
  listing_amenities: 'Wi-Fi, Live Music ',
  listing_description: 'India has always been known as a land of spices and Asia’s largest spice market is in Delhi. We try to bring diverse flavors of Delhi to you through the spices used to create our signature dishes.Hand-crafted Decor -A mix of styles and colors.'
)
# main picture
fifth_seed.photo.attach(io: file20, filename: "d.png", content_type: "image/png")
# Secondary pictures
fifth_seed.photos.attach(io: file21, filename: "d1.png", content_type: "image/png")
fifth_seed.photos.attach(io: file22, filename: "d2.png", content_type: "image/png")
fifth_seed.photos.attach(io: file23, filename: "d3.png", content_type: "image/png")
fifth_seed.photos.attach(io: file24, filename: "d4.png", content_type: "image/png")

fifth_seed.user = fifth_user
fifth_seed.save!
