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

  def update
    plants = Plant.find_by(id:params[:id])
    if plants
      plants.update(plant_params)
      render json: plants, status: :accepted
    else
      render json: {error: 'failed to update'}, status: :not_found
    end
  end

  def create
    new_plant = Plant.create(plant_params)
  end

  def destroy
    plants = Plant.find_by(id:params[:id])
    if plants
      plants.destroy
      head :no_content
    else
      render json: {error: 'Product not found'}, status: :not_found
    end
  end

  private

  def plant_params
    params.permit(:name, :image, :price)
  end
end
