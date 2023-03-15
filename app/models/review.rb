class Review < ApplicationRecord
  belongs_to :user
  belongs_to :booking

  validates :comment, :rating, presence: true
  validates :rating, inclusion: { in: 0..5 }
end
