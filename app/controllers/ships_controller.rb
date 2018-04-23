class ShipsController < ApplicationController
  def index
  end

  def show
    @ships = Ship.find(params[:id])
  end

  def create
  end

  def new
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
    @ship = Ship.find(params[:id])
    @ship.destroy
  end
end
