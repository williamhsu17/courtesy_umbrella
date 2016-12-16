class Admin::UmbrellasController < ApplicationController
  def index
    @locations = Location.all
    @umbrella_in_renting = Umbrella.where(:umbrella_holder_type => :User)
  end
end
