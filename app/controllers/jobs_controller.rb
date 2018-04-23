class JobsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @jobs = Job.new
    @ships = Ship.all
    @minimum_description_length = 50
  end

  def create
    p params.inspect
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
