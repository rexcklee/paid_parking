class ParkingSpotsController < ApplicationController
  def index
    @parking_spots = ParkingSpot.includes(:time_limit, :street, :business_zone, :hourly_rate).all
  end

  def show
    @parking_spot = ParkingSpot.find(params[:id])
  end

  def search
    keywords_search = "%#{params[:keywords]}%"
    if params[:hourly_rate] == "All"
      @parking_spots = ParkingSpot.joins(:street).where("streets.name LIKE ?", keywords_search)
    else
      @parking_spots = ParkingSpot.joins(:street).where("streets.name LIKE ?", keywords_search).joins(:hourly_rate).where("hourly_rates.rate LIKE ?", params[:hourly_rate])
    end
  end
end
