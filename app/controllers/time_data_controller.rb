class TimeDataController < ApplicationController

  def index
    @time_data = @time_data
  end

  def new
    @time_datum = TimeDatum.new
  end
end
