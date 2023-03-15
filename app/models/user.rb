class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings, dependent: :destroy
  has_many :listings, through: :bookings
  has_many :listings
  has_many :reviews

  validates :first_name, :last_name, :email, :encrypted_password, presence: true
  validates :phone_number, uniqueness: true
end
