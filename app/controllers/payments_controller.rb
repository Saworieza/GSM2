class PaymentsController < ApplicationController
  before_action :set_payment, only: [:show, :edit, :update, :destroy]

  def index
  	@payments = Payment.all
  	@contractor = Contractor.all
  end


  def payment_form 
  	@contractor = Contractor.find params[:id] 	
  end

  def show    
  end

  def create
    begin
      payment = Payment.new({ contractor_id: params[:payment][:contractor_id], contractorinvoice_id: params[:payment][:invoice_id] })

      amount = []
      YAML.load(payment.contractorinvoice_id.delete':').each do |id|
      # YAML.load(payment.contractorinvoice_id.scan(/\d/).map(&:to_i).delete':').each do |id|
        ci = Contractorinvoice.find id
        ci.paid = true
        ci.save
        amount << (ci.contractorpo.amount / ci.stage.percentage)
      end

      payment.amount = (amount.sum)
      if payment.save
        redirect_to root_path, notice: 'Payment Was successfully Made'
      else
        flash[:alert] = 'Payment not created' + @payment.errors.full_messages.to_sentence
      end
    rescue Exception => ex
      ex.message
    end

  end

  private
  def set_payment
    @payment = Payment.find(params[:id])
  end
  
end
