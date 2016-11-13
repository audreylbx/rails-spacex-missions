class MissionsController < ApplicationController
  before_action :set_planet, only: [:create, :destroy]
  def create
    @mission = Mission.new(mission_params)
    @mission.planet = @planet
    if @mission.save
      redirect_to @planet
    else
      render 'planets/show'
    end
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy
    redirect_to @mission.planet
  end

  private

  def set_planet
    @planet = Planet.find(params[:planet_id])
  end

  def mission_params
    params.require(:mission).permit(:description, :spaceshift_id)
  end
end
