class Port < ApplicationRecord
  has_many :vessels
  has_many :bookings
end
