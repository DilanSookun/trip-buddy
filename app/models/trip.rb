class Trip < ApplicationRecord
  belongs_to :bookings
  has_many :bookings
  has_many :user, through: :bookings
end
