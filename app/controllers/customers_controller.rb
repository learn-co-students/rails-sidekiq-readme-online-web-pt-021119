class CustomersController < ApplicationController
  def index
    @customers = Customer.all
  end

  def upload
    LeadsWorker.perform_async(params[:leads].path) # notice _async bv bv
    redirect_to customers_path
  end

end
