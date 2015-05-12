class KIndactivitiesController < ApplicationController
  before_action :set_k_indactivity, only: [:show, :edit, :update, :destroy]

  # GET /k_indactivities
  # GET /k_indactivities.json
  def index
    @k_indactivities = KIndactivity.all
  end

  # GET /k_indactivities/1
  # GET /k_indactivities/1.json
  def show
  end

  # GET /k_indactivities/new
  def new
    @k_indactivity = KIndactivity.new
  end

  # GET /k_indactivities/1/edit
  def edit
  end

  # POST /k_indactivities
  # POST /k_indactivities.json
  def create
    @k_indactivity = KIndactivity.new(k_indactivity_params)

    respond_to do |format|
      if @k_indactivity.save
        format.html { redirect_to @k_indactivity, notice: 'K indactivity was successfully created.' }
        format.json { render :show, status: :created, location: @k_indactivity }
      else
        format.html { render :new }
        format.json { render json: @k_indactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /k_indactivities/1
  # PATCH/PUT /k_indactivities/1.json
  def update
    respond_to do |format|
      if @k_indactivity.update(k_indactivity_params)
        format.html { redirect_to @k_indactivity, notice: 'K indactivity was successfully updated.' }
        format.json { render :show, status: :ok, location: @k_indactivity }
      else
        format.html { render :edit }
        format.json { render json: @k_indactivity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /k_indactivities/1
  # DELETE /k_indactivities/1.json
  def destroy
    @k_indactivity.destroy
    respond_to do |format|
      format.html { redirect_to k_indactivities_url, notice: 'K indactivity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_k_indactivity
      @k_indactivity = KIndactivity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def k_indactivity_params
      params.require(:k_indactivity).permit(:name)
    end
end
