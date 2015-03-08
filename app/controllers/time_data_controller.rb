class TimeDataController < ApplicationController

  def index
    @time_data = TimeDatum.all
  end

  def new
    @time_datum = TimeDatum.new
  end
end
