class PaymentsController < ApplicationController
  # before_action :set_payment, only: [:show, :edit, :update, :destroy]

  def index
  	# render plain: 'ok'
  	@contractor = Contractor.all
  end


  def payment_form 
  	@contractor = Contractor.find params[:id] 	
    # @contractorinvoices = Contractorinvoice.find params[:id]
  end

  # def show    
  # end

  def create
  	redirect_to root_path
    # @payment = Payment.new
    # respond_to do |format|
    #   if @payment.save
    #     params[:ids].each do |contractorinvoice_id|
    #       contractorinvoice = contractorinvoice.find(contractorinvoice_ids)
    #       contractorinvoice.payment_id = @payment.id
    #       contractorinvoice.paid = true
    #       contractorinvoice.save
    #     end
    #     redirect_to index_page, notice: 'Payment Was successfully created'
    #     flash[:notice] = 'Payment was successfully created'
    #   else
    #     format.html{render :new}
    #     flash[:alert] = 'Payment not created' + @payment.errors.full_messages.to_sentence
    #   end
    # end

    # @payment.contractor_id = params[:contractor_id]
    # @payment.amount = params[:amount]

    # @payment.save
    # flash[:notice] = 'Payment created'

  end

  private
  # def set_payment
  #   @payment = Payment.find(params[:id])
  # end
  
end
