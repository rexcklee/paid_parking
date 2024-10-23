class StreetsController < ApplicationController
  def index
    @streets = Street.all.order("name")
  end

  def show
    @street = Street.find(params[:id])
  end
end
