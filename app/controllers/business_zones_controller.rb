class BusinessZonesController < ApplicationController
  def index
    @business_zones = BusinessZone.all
  end

  def show
  end
end
