class DashboardController < ApplicationController
  def index
    #grabs all of the tables and form for new contract on dashboard page
    @ships = Ship.all
    @jobs = Job.all
    @contracts = Contract.all
    @contract = Contract.new
  end
end