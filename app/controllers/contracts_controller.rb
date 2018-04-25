class ContractsController < ApplicationController
  def new
  end

  def create
    @contract = Contract.create(contract_params)
    
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
