class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
  end

  def create
    Ship.create(ship_params)
    redirect_to(ships_path)
  end

  def new
    @ships = Ship.all
    @ship = Ship.new
    
  end

  def edit

  end

  def update

  end

  def delete

  end

  def destroy

  end

  private

  def ship_params
    params.require(:ship).permit(:name, :container_max, :payload, :location, :shipper_id)
  end

end
