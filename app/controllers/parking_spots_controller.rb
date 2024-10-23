class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.includes(:time_limit, :street, :business_zone, :hourly_rate).all
  end

  def show
    @parking_spot = ParkingSpot.find(params[:id])
  end
end
