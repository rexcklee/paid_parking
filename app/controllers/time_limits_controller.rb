class TimeLimitsController < ApplicationController
  def index
    @time_limits = TimeLimit.all
  end

  def show
  end
end
