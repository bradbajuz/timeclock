class TimeDataController < ApplicationController
  respond_to :html, :js

  def index
    @time_data = TimeDatum.all
  end

  def new
    @time_datum = TimeDatum.new
  end

  def create
    @time_datum = TimeDatum.new(time_datum_params)

    if @time_datum.save
      flash[:notice] = "Time was saved successfully."
      redirect_to time_data_path
      return
    else
      flash[:error] = "Error saving time. Please try again."
    end

    respond_with(@time_datum) do |f|
      f.html { redirect_to time_data_path }
    end
  end

  def edit
    @time_datum = TimeDatum.find(params[:id])
  end

  def update
    @time_datum = TimeDatum.find(params[:id])

    if @time_datum.update_attributes(time_datum_params)
      redirect_to time_data_path
    else
      flash[:error] = "Error updating time. Please try again."
    end
  end

private
  def time_datum_params
    params.require(:time_datum).permit(:clock_in, :clock_out, :break_out, :break_in, :notes)
  end
end