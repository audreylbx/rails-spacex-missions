class PlanetsController < ApplicationController
  before_action :set_planet, only: [:show, :destroy]

  def index
    @planets = Planet.all
  end

  def show
    @mission = Mission.new
  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    if @planet.save
      redirect_to @planet
    else
      render :new
    end
  end

  def destroy
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end

  def planet_params
    params.require(:planet).permit(:name, photos: [])
  end
end
