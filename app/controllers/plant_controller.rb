class PlantController < ApplicationController
  def index
    render json: Plant.all
  end

  def show
    plant = Plant.find_by(id: params[:id])
    if plant
      render json: plant
    else
      render json: {error: "Plant not found"}, state: :not_found
    end
  end

  # def update
  #   plants = Plant.
  # end

  def create
    new_plant = Plant.create(plant_params)
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
