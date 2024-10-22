class PayType < ApplicationRecord
    has_many :parking_spot_pay_type
    has_many :parking_spot, through :parking_spot_pay_type
end
