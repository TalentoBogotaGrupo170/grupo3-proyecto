class PoblationsController < ApplicationController
  before_action :set_poblation, only: [:show, :edit, :update, :destroy]

  # GET /poblations
  # GET /poblations.json
  def index
    @poblations = Poblation.all
  end

  # GET /poblations/1
  # GET /poblations/1.json
  def show
  end

  # GET /poblations/new
  def new
    @poblation = Poblation.new
  end

  # GET /poblations/1/edit
  def edit
  end

  # POST /poblations
  # POST /poblations.json
  def create
    @poblation = Poblation.new(poblation_params)

    respond_to do |format|
      if @poblation.save
        format.html { redirect_to @poblation, notice: 'Poblation was successfully created.' }
        format.json { render :show, status: :created, location: @poblation }
      else
        format.html { render :new }
        format.json { render json: @poblation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /poblations/1
  # PATCH/PUT /poblations/1.json
  def update
    respond_to do |format|
      if @poblation.update(poblation_params)
        format.html { redirect_to @poblation, notice: 'Poblation was successfully updated.' }
        format.json { render :show, status: :ok, location: @poblation }
      else
        format.html { render :edit }
        format.json { render json: @poblation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poblations/1
  # DELETE /poblations/1.json
  def destroy
    @poblation.destroy
    respond_to do |format|
      format.html { redirect_to poblations_url, notice: 'Poblation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_poblation
      @poblation = Poblation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def poblation_params
      params.require(:poblation).permit(:nombre)
    end
end
