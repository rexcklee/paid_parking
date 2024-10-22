class ParkingSpot < ApplicationRecord
  belongs_to :time_limit
  belongs_to :street
  belongs_to :hourly_rate
  belongs_to :business_zone

  has_many :parking_spot_pay_type
  has_many :pay_type, through: :parking_spot_pay_type

  validates :block_number, :payment_time, :total_space, :mobile_payment_number, presence: true
end
