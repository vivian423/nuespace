# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Listing.destroy_all

listing_seed = Listing.new(
  listing_name: 'Basecamp',
  listing_address: 'Halden, Norway',
  listing_amenities: 'wi-fi',
  listing_description: 'Centrally located in Longyearbyen, Basecamp Hotel is a traditional trapper's lodge-style property just 15 minutes’ drive from Longyearbyen Airport.
  # listing_poster_url: how to add images?

  # for URLs
#   require "open-uri"

# file = URI.open("https://upload.wikimedia.org/wikipedia/commons/thumb/8/82/NES-Console-Set.jpg/1200px-NES-Console-Set.jpg")
# article = Article.new(title: "NES", body: "A great console")
# article.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
# article.save

# article.photo.attach(io: File.open(Rails.root.join(‘app’, ‘assets’, ‘local, ‘name.jpg’), filename: "nes.png", content_type: "image/png")

# )
# listing_seed.photo = url("")
# listing_seed.user_id = @user_seed
# listing_seed.save

   Listing.create!(
    listing_name: 'Svalbard',
    listing_address: 'Halden, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Located in Longyearbyen, 1.1 km from Svalbard Church, Svalbard Hotell | The Vault provides accommodation with free bikes, free private parking, a shared lounge and a terrace.'
    listing_poster_url:

  )


   Listing.create!(
    listing_name: 'Funken',
    listing_address: 'Halden, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'This hotel is situated on the island of Spitsbergen, in Norway’s Arctic Archipelago, Svalbard.'
    listing_poster_url:
  )

   Listing.create!(
    listing_name: 'Radisson Blu',
    listing_address: 'Oslo, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Radisson Blu Polar Hotel is the northernmost full-service hotel in the world, located in Longyearbyen. Clean room, well positioned, enough dark curains to be able to sleep during midnight sun.'
    listing_poster_url:
  )

  Listing.create!(
    listing_name: 'Russkiy',
    listing_address: 'Bergen, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Located in Longyearbyen and within 1.2 km of Svalbard Church, Russkiy Dom features a shared lounge, non-smoking rooms, and free WiFi. just quiet, comfortable and clean.'
    listing_poster_url:
  )

  Listing.create!(
    listing_name: 'Haugen',
    listing_address: 'Kongsberg, Norway',
    listing_amenities: 'Free Wi_Fi, TV with cable'
    listing_description: 'Situated in Longyearbyen, within 1.3 km of Svalbard Church.'
    listing_poster_url:
  )

   Listing.create!(
    listing_name: 'Barentsburg',
    listing_address: 'Kristiansand, Norway',
    listing_amenities: 'Kitchen facilities, like: fridge, coffee maker and microwave,
    TV with cable, free Wi-Fi'
    listing_description: 'Hotel Barentsburg is on the Svalbard island of Spitsbergen. Overlooking the Isfjord, it offers a restaurant and bar.'
    listing_poster_url:
  )
