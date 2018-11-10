class PaymentsController < ApplicationController
  def index
  	# render plain: 'ok'
  	@contractor = Contractor.all
  end

  def payment_form 
  	@contractor = Contractor.find params[:id] 	
  end

  def create
  	redirect_to root_path
  end
end
