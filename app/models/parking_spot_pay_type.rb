class ParkingSpotPayType < ApplicationRecord
  belongs_to :parking_spot
  belongs_to :pay_type
end
