class StationController < ApplicationController
  def show
    @station = Location.find(params[:id])
    @umbrellas = @station.umbrellas
  end

  def return
    umbrella = Umbrella.find(params[:id])
    current_location = Location.find(params[:location_id])
    umbrella.umbrella_holder = current_location

    umb_log = umbrella.umbrella_rent_histories.last
    umb_log.end_location = umbrella.umbrella_holder
    umb_log.end_time = Time.now()

    if umbrella.save
      umb_log.save
    else
    end

    redirect_to station_path(params[:location_id])
  end
end
