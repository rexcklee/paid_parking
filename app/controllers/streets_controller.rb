class StreetsController < ApplicationController
  def index
    @streets = Street.all
  end

  def show
  end
end
