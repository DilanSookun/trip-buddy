class Trip < ApplicationRecord
  has_many :bookings, dependent: :destroy
  has_many :user, through: :bookings

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end
