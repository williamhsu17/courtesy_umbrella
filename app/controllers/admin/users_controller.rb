class Admin::UsersController < ApplicationController
  def index
    @locations = Location.all
    @umbrellas = Umbrella.all
    @users = User.all
    @umbrella_in_renting = Umbrella.where(:umbrella_holder_type => :User)

    umbrella_rent_log = UmbrellaRentHistory.all

    station_time_log = {}

    umbrella_rent_log.each do |u|
      if u.start_location_id == 1
        station_time_log[u.start_time] = {:in => u.start_location_id}
      end
      if u.end_location_id == 1
        station_time_log[u.end_time] = {:out => u.end_location_id}
      end
    end

    @station_time_log = station_time_log.sort_by { |key, value| key }
  end
end
