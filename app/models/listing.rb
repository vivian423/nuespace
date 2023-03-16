class Listing < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews, through: :bookings, dependent: :destroy
  has_many :users, through: :bookings
  has_one_attached :photo
  has_many_attached :photos
  validates :listing_name, :listing_address, :listing_amenities, presence: true
  geocoded_by :listing_address
  after_validation :geocode, if: :will_save_change_to_listing_address?
end
