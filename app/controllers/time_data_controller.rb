class TimeDataController < ApplicationController
  respond_to :html, :js

  def index
    @time_datum = TimeDatum.new
    @time_data = TimeDatum.all
  end

  def new
    @time_datum = TimeDatum.new
  end

  def create
    @time_datum = TimeDatum.new(time_datum_params)
  end
end

def time_datum_params
  params.require(:time_datum).permit(:clock_in, :clock_out, :break_out, :break_in, :notes)
end