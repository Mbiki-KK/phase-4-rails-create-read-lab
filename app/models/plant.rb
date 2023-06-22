class Plant < ApplicationRecord
  def index
    render json: Plant.all
  end
end
