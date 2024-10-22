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

parking_spots[0..9].each do |parking_spot|
    puts parking_spot["Block Number"]
end
