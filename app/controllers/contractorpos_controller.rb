class ContractorposController < ApplicationController
  before_action :set_contractorpo, only: [:show, :edit, :update, :destroy]
  impressionist

  # GET /contractorpos
  # GET /contractorpos.json
  def index
    @contractorpos = Contractorpo.all
  end

  # GET /contractorpos/1
  # GET /contractorpos/1.json
  def show
  end

  # GET /contractorpos/new
  def new
    @contractorpo = Contractorpo.new
  end

  # GET /contractorpos/1/edit
  def edit
  end

  # POST /contractorpos
  # POST /contractorpos.json
  def create
    @contractorpo = Contractorpo.new(contractorpo_params)

    respond_to do |format|
      if @contractorpo.save
        format.html { redirect_to root_path, notice: 'Contractorpo was successfully created.' }
        format.json { render :show, status: :created, location: @contractorpo }
      else
        format.html { render :new }
        format.json { render json: @contractorpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractorpos/1
  # PATCH/PUT /contractorpos/1.json
  def update
    respond_to do |format|
      if @contractorpo.update(contractorpo_params)
        format.html { redirect_to @contractorpo, notice: 'Contractorpo was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractorpo }
      else
        format.html { render :edit }
        format.json { render json: @contractorpo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractorpos/1
  # DELETE /contractorpos/1.json
  def destroy
    @contractorpo.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Contractorpo was successfully Deleted.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractorpo
      @contractorpo = Contractorpo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractorpo_params
      params.require(:contractorpo).permit(:number, :date, :amount, :description, :contractorquote_id)
    end
end
