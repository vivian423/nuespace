# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "open_uri"

Listing.destroy_all
User.destroy_all

user_seed = User.create(first_name "Amrita", last_name "Goswami", email: "amritagg@gmail.com", password: "123456")
user_seed = User.create(first_name "Abc", last_name "Efg", email: "stmh@gmail.com", password: "143567")

file = URI.open("https://storage.kempinski.com/cdn-cgi/image/w=1920,f=auto,g=auto,fit=scale-down/ki-cms-prod/images/1/9/8/6/86891-1-eng-GB/5b43edfee48c-73660559_4K.jpg")
first_seed = Listing.new(
  listing_name: 'Basecamp',
  listing_address: 'Halden, Norway',
  listing_amenities: 'WiFi',
  listing_description: 'Centrally located in Longyearbyen, Basecamp Hotel is a traditional trappers lodge-style property just 15 minutes drive from Longyearbyen Airport.',
)
# main picture
first_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
first_seed.user = user_seed
first_seed.save


file = URI.open("https://plus.unsplash.com/premium_photo-1678286771657-cf22aa97faf0?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8N3x8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60.jpg")
second_seed =Listing.new(
    listing_name: 'Basecamp',
    listing_address: 'Halden, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Centrally located in Longyearbyen, Basecamp Hotel is a traditional trapper's lodge-style property just 15 minutes’ drive from Longyearbyen Airport.
  )
  second_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  second_seed.user = user_seed
  second_seed.save


  file = URI.open("https://images.unsplash.com/photo-1542314831-068cd1dbfeeb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8aG90ZWx8ZW58MHx8MHx8&auto=format&fit=crop&w=800&q=60.jpg")
  third_seed =Listing.new(
    listing_name: 'Svalbard',
    listing_address: 'Halden, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Located in Longyearbyen, 1.1 km from Svalbard Church, Svalbard Hotell | The Vault provides accommodation with free bikes, free private parking, a shared lounge and a terrace.'
  )
  third_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  third_seed.user = user_seed
  third_seed.save



  file = URI.open("https://storage.kempinski.com/cdn-cgi/image/w=1920,f=auto,g=auto,fit=scale-down/ki-cms-prod/images/1/9/8/6/86891-1-eng-GB/5b43edfee48c-73660559_4K.jpg")
  fourth_seed =Listing.new(
    listing_name: 'Funken',
    listing_address: 'Halden, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'This hotel is situated on the island of Spitsbergen, in Norway’s Arctic Archipelago, Svalbard.'
  )
  fourth_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  fourth_seed.user = user_seed
  fourth_seed.save


  file = URI.open("https://plus.unsplash.com/premium_photo-1678286769630-4ea3d6878dfb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTN8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60.jpg")
  fifth_seed =Listing.new(
    listing_name: 'Radisson Blu',
    listing_address: 'Oslo, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Radisson Blu Polar Hotel is the northernmost full-service hotel in the world, located in Longyearbyen. Clean room, well positioned, enough dark curains to be able to sleep during midnight sun.'
    listing_poster_url:
   )
   fifth_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  fifth_seed.user = user_seed
  fifth_seed.save



  file = URI.open("https://images.unsplash.com/photo-1571003123894-1f0594d2b5d9?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvdGVsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=800&q=60.jpg")
    sixth_seed =Listing.new(
    listing_name: 'Russkiy',
    listing_address: 'Bergen, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Located in Longyearbyen and within 1.2 km of Svalbard Church, Russkiy Dom features a shared lounge, non-smoking rooms, and free WiFi. just quiet, comfortable and clean.'
  )
  sixth_seed.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
  sixth_seed.user = user_seed
  sixth_seed.save
