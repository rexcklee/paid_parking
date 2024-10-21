class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.all
  end

  def show
  end
end
