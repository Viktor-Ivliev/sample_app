class GrafsController < ApplicationController
  before_action :set_graf, only: [:show, :edit, :update, :destroy]

  # GET /grafs
  # GET /grafs.json
  def index
    @grafs = Graf.all
  end

  # GET /grafs/1
  # GET /grafs/1.json
  def show
  end

  # GET /grafs/new
  def new
    @graf = Graf.new
    @order_all = Order.all
  end

  # GET /grafs/1/edit
  def edit
    @order_all = Order.all
  end

  # POST /grafs
  # POST /grafs.json
  def create
    @graf = Graf.new(graf_params)

    respond_to do |format|
      if @graf.save
        format.html { redirect_to @graf, notice: 'Graf was successfully created.' }
        format.json { render :show, status: :created, location: @graf }
      else
        format.html { render :new }
        format.json { render json: @graf.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /grafs/1
  # PATCH/PUT /grafs/1.json
  def update
    respond_to do |format|
      if @graf.update(graf_params)
        format.html { redirect_to @graf, notice: 'Graf was successfully updated.' }
        format.json { render :show, status: :ok, location: @graf }
      else
        format.html { render :edit }
        format.json { render json: @graf.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /grafs/1
  # DELETE /grafs/1.json
  def destroy
    @graf.destroy
    respond_to do |format|
      format.html { redirect_to grafs_url, notice: 'Graf was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_graf
      @graf = Graf.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def graf_params
      params.require(:graf).permit(:date_start, :date_end, :table_service_order_id)
    end
end
