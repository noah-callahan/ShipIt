class DashboardController < ApplicationController
  def index
    @ships = Ship.all
    @jobs = Job.all
    @contracts = Contract.all
    @contract = Contract.new
  end
end