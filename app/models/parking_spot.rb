class ParkingSpot < ApplicationRecord
  belongs_to :time_limit
  belongs_to :street
  belongs_to :hourly_rate
  belongs_to :business_zone
end
