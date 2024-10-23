class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.includes(:time_limit, :street, :business_zone, :hourly_rate).all
  end

  def show
    @parking_spot = ParkingSpot.find(params[:id])
  end

  def search
    wildcard_search = "%#{params[:keywords]}%"
    @parking_spots = ParkingSpot.joins(:street).where("streets.name LIKE ?", wildcard_search)
  end
end
