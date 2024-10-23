# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
require "csv"
require 'faker'

ParkingSpotPayType.delete_all
PayType.delete_all
ParkingSpot.delete_all
TimeLimit.delete_all
Street.delete_all
HourlyRate.delete_all
BusinessZone.delete_all

filename = Rails.root.join("db/paid_parking.csv")
puts "Loading data from the file: #{filename}"

csv_data = File.read(filename)

parking_spots = CSV.parse(csv_data, headers: true, encoding: "utf-8")

parking_spots[0..99].each do |parking_spot|
    street = Street.find_or_create_by(name: parking_spot["Street"])

    time_limit = TimeLimit.find_or_create_by(time_period: parking_spot["Time Limit"])

    hourly_rate = HourlyRate.find_or_create_by(rate: parking_spot["Hourly Rate"])

    business_zone = BusinessZone.find_or_create_by(zone_name: parking_spot["Business Zone"])

    if street&.valid?
        new_parking_spot = street.parking_spots.create(
            block_number: parking_spot["Block Number"],
            payment_time: parking_spot["Payment Time"],
            total_space: parking_spot["Total Space"].to_i,
            mobile_payment_number: parking_spot["Mobile Payment Number"].to_i,
            time_limit_id: time_limit.id,
            hourly_rate_id: hourly_rate.id,
            business_zone_id: business_zone.id
        )

        if !new_parking_spot&.valid?
            puts "Failed to create parking spot: #{parking_spot["Block Number"]}"
            next
        end

        #paytype
        rand(0...5).times do
            pay_type = PayType.find_or_create_by(name: Faker::Subscription.unique.payment_method)
            ParkingSpotPayType.create(parking_spot: new_parking_spot, pay_type:pay_type)
        end
        Faker::Subscription.unique.clear
    end    
end
