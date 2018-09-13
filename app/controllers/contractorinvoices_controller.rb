class ContractorinvoicesController < ApplicationController
  before_action :set_contractorinvoice, only: [:show, :edit, :update, :destroy]

  # GET /contractorinvoices
  # GET /contractorinvoices.json
  def index
    @contractorinvoices = Contractorinvoice.all
  end

  # GET /contractorinvoices/1
  # GET /contractorinvoices/1.json
  def show
  end

  # GET /contractorinvoices/new
  def new
    @contractorinvoice = Contractorinvoice.new
  end

  # GET /contractorinvoices/1/edit
  def edit
  end

  # POST /contractorinvoices
  # POST /contractorinvoices.json
  def create
    @contractorinvoice = Contractorinvoice.new(contractorinvoice_params)

    respond_to do |format|
      if @contractorinvoice.save
        format.html { redirect_to root_path, notice: 'Contractorinvoice was successfully created.' }
        format.json { render :show, status: :created, location: @contractorinvoice }
      else
        format.html { render :new }
        format.json { render json: @contractorinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractorinvoices/1
  # PATCH/PUT /contractorinvoices/1.json
  def update
    respond_to do |format|
      if @contractorinvoice.update(contractorinvoice_params)
        format.html { redirect_to @contractorinvoice, notice: 'Contractorinvoice was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractorinvoice }
      else
        format.html { render :edit }
        format.json { render json: @contractorinvoice.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractorinvoices/1
  # DELETE /contractorinvoices/1.json
  def destroy
    @contractorinvoice.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Contractorinvoice was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractorinvoice
      @contractorinvoice = Contractorinvoice.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractorinvoice_params
      params.require(:contractorinvoice).permit(:number, :date, :amount, :milestone_id)
    end
end
