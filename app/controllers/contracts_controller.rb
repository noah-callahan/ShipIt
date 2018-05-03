class ContractsController < ApplicationController
  def new
  end

  def create
    @c = Contract.new(contract_params)
    @exists = Contract.where(["ship_id = ? and job_id = ?", @c.ship_id, @c.job_id]).first
    @jobs = Job.all
    @contracts = Contract.all
    if @exists == nil
      @c.save
      respond_to do |format|
        format.js
      end
    else
      redirect_to dashboard_index_path
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
