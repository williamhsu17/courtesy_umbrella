class UmbrellasController < ApplicationController
  before_action :authenticate_user!
  def index
    @umbrella = current_user.umbrella
  end

  def borrow
    umbrella = Umbrella.find(params[:id])
    umbrella.umbrella_holder = current_user
    umbrella.save

    redirect_to umbrellas_path
  end
end
