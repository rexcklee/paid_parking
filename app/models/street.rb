class Street < ApplicationRecord
    has_many :parking_spots, dependent: :destroy

    validates :name, presence: true
end
