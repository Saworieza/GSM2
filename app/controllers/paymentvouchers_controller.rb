class PaymentvouchersController < ApplicationController
  before_action :set_paymentvoucher, only: [:show, :edit, :update, :destroy]
  # impressionist

  # GET /paymentvouchers
  # GET /paymentvouchers.json
  def index
    @paymentvouchers = Paymentvoucher.all
  end

  # GET /paymentvouchers/1
  # GET /paymentvouchers/1.json
  def show
  end

  # GET /paymentvouchers/new
  def new
    @paymentvoucher = Paymentvoucher.new
  end

  # GET /paymentvouchers/1/edit
  def edit
  end

  # POST /paymentvouchers
  # POST /paymentvouchers.json
  def create
    @paymentvoucher = Paymentvoucher.new(paymentvoucher_params)

    respond_to do |format|
      if @paymentvoucher.save
        format.html { redirect_to @paymentvoucher, notice: 'Paymentvoucher was successfully created.' }
        format.json { render :show, status: :created, location: @paymentvoucher }
      else
        format.html { render :new }
        format.json { render json: @paymentvoucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /paymentvouchers/1
  # PATCH/PUT /paymentvouchers/1.json
  def update
    respond_to do |format|
      if @paymentvoucher.update(paymentvoucher_params)
        format.html { redirect_to @paymentvoucher, notice: 'Paymentvoucher was successfully updated.' }
        format.json { render :show, status: :ok, location: @paymentvoucher }
      else
        format.html { render :edit }
        format.json { render json: @paymentvoucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /paymentvouchers/1
  # DELETE /paymentvouchers/1.json
  def destroy
    @paymentvoucher.destroy
    respond_to do |format|
      format.html { redirect_to paymentvouchers_url, notice: 'Paymentvoucher was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_paymentvoucher
      @paymentvoucher = Paymentvoucher.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def paymentvoucher_params
      params.require(:paymentvoucher).permit(:number, :date, :amount, :milestone_id, :stage_id, :contractor_id, :site_id, :contractorinvoice_id)
    end
end
