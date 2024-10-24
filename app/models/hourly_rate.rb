class HourlyRate < ApplicationRecord
    has_many :parking_spots, dependent: :destroy

    validates :rate, presence: true, uniqueness: true
end
