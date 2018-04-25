class ContractsController < ApplicationController
  def new
  end

  def create
    @contract = Contract.create(contract_params)
    Job.update(@contract.job_id, :ship_id => @contract.ship_id)
    redirect_to '/'
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
