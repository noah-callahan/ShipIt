class DashboardController < ApplicationController
  def index
    @ships = Ship.all
    @jobs = Job.all
  end
end