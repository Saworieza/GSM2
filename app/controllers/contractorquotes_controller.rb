class ContractorquotesController < ApplicationController
  before_action :authenticate_user!
  before_action :set_contractorquote, only: [:show, :edit, :update, :destroy]
  # impressionist

  # GET /contractorquotes
  # GET /contractorquotes.json
  def index
    @contractorquotes = Contractorquote.all
  end

  # GET /contractorquotes/1
  # GET /contractorquotes/1.json
  def show
  end

  # GET /contractorquotes/new
  def new
    @contractorquote = Contractorquote.new
  end

  # GET /contractorquotes/1/edit
  def edit
  end

  # POST /contractorquotes
  # POST /contractorquotes.json
  def create
    @contractorquote = Contractorquote.new(contractorquote_params)

    respond_to do |format|
      if @contractorquote.save
        format.html { redirect_to root_path, notice: 'Contractorquote was successfully created.' }
        format.json { render :show, status: :created, location: @contractorquote }
      else
        format.html { render :new }
        format.json { render json: @contractorquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /contractorquotes/1
  # PATCH/PUT /contractorquotes/1.json
  def update
    respond_to do |format|
      if @contractorquote.update(contractorquote_params)
        format.html { redirect_to @contractorquote, notice: 'Contractorquote was successfully updated.' }
        format.json { render :show, status: :ok, location: @contractorquote }
      else
        format.html { render :edit }
        format.json { render json: @contractorquote.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /contractorquotes/1
  # DELETE /contractorquotes/1.json
  def destroy
    @contractorquote.destroy
    respond_to do |format|
      format.html { redirect_to root_url, notice: 'Contractorquote was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contractorquote
      @contractorquote = Contractorquote.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contractorquote_params
      params.require(:contractorquote).permit(:number, :date, :amount, :description, :site_id, :customerpo_id, :contractor_id)
    end
end
