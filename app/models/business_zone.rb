class BusinessZone < ApplicationRecord
    has_many :parking_spots, dependent: :destroy

    validates :zone_name, presence: true, uniqueness: true
end
