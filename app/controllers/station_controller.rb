class StationController < ApplicationController
  def show
    @station = Location.find(params[:id])
    @umbrellas = @station.umbrellas
  end

  def return
    umbrella = Umbrella.find(params[:id])
    current_location = Location.find(params[:location_id])
    umbrella.umbrella_holder = current_location
    umbrella.save

    redirect_to station_path(params[:location_id])
  end
end
