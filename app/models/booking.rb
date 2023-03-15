class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :listing
  has_many :reviews

  validates :start_date, :end_date, presence: true
  validates :end_date, comparison: { greater_than: :start_date }
end
