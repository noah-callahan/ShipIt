class JobsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @job = Job.new
    @ships = Ship.all
    @minimum_description_length = 50
  end

  def create
    Job.create(job_params)
    redirect_to '/'
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

  def job_params
    params.require(:job).permit(:name, :description, :origin, :destination, :cost, :total_containers, :ship_id, :shipper_id)
  end

end
