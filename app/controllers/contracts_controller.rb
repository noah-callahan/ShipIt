class ContractsController < ApplicationController
  def new
  end

  def create
    @c = Contract.new(contract_params)
    @jobs = Job.all
    @contracts = Contract.all
    if @c.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to '/'
    end
  end

  def edits
  end

  def show
  end

  private

  def contract_params
    params.require(:contract).permit(:ship_id, :job_id, :priority)
  end

end
