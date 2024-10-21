class HourlyRatesController < ApplicationController
  def index
    @hourly_rates = HourlyRate.all
  end

  def show
  end
end
