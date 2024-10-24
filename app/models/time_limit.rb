class TimeLimit < ApplicationRecord
    has_many :parking_spots, dependent: :destroy

    validates :time_period, presence: true, uniqueness: true
end
