class ParkingSpot < ApplicationRecord
  belongs_to :time_limit
  belongs_to :street
  belongs_to :hourly_rate
  belongs_to :business_zone

  has_many :parking_spot_pay_types
  has_many :pay_types, through: :parking_spot_pay_types

  validates :mobile_payment_number, :block_number, :payment_time, presence: true
  validates :total_space, presence: true, numericality: { only_integer: true }

  def pay_types_list
    pay_types.map(&:name).join(", ")
  end
end
