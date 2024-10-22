class ParkingSpot < ApplicationRecord
  belongs_to :time_limit
  belongs_to :street
  belongs_to :hourly_rate
  belongs_to :business_zone

  validates :block_number, :payment_time, :total_space, :mobile_payment_number, presence: true
end
