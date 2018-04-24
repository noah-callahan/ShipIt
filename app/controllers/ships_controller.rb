class ShipsController < ApplicationController
  def index
    @ships = Ship.all
  end

  def show
    @ship = Ship.find(params[:id])
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
    @ship = Ship.find(params[:id])
    

  end

  def update
    @ship = Ship.find(params[:id])
    @ship.update(ship_params)
    redirect_to ship_path(@ship.id)

  end

  def delete

  end

  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy
    redirect_to dashboard_index_path

  end

  private

  def ship_params
    params.require(:ship).permit(:name, :container_max, :payload, :location, :shipper_id)
  end

end
