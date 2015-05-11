class TableServiceOrdersController < ApplicationController
  before_action :set_table_service_order, only: [:show, :edit, :update, :destroy]

  # GET /table_service_orders
  # GET /table_service_orders.json
  def index
    @table_service_orders = TableServiceOrder.all
  end

  # GET /table_service_orders/1
  # GET /table_service_orders/1.json
  def show
  end

  # GET /table_service_orders/new
  def new
    @table_service_order = TableServiceOrder.new
    @order_all = Order.all
    @service_all = Service.all
  end

  # GET /table_service_orders/1/edit
  def edit
    @order_all = Order.all
    @service_all = Service.all
  end

  # POST /table_service_orders
  # POST /table_service_orders.json
  def create
    @table_service_orders = TableServiceOrder.new(table_service_order_params)
    respond_to do |format|
      if @table_service_orders.save
        format.html { redirect_to @table_service_orders, notice: 'Table service order was successfully created.' }
        format.json { render :show, status: :created, location: @table_service_order }
      else
        format.html { render :new }
        format.json { render json: @table_service_orders.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /table_service_orders/1
  # PATCH/PUT /table_service_orders/1.json
  def update
    respond_to do |format|
      if @table_service_order.update(table_service_order_params)
        format.html { redirect_to @table_service_order, notice: 'Table service order was successfully updated.' }
        format.json { render :show, status: :ok, location: @table_service_order }
      else
        format.html { render :edit }
        format.json { render json: @table_service_order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /table_service_orders/1
  # DELETE /table_service_orders/1.json
  def destroy
    @table_service_order.destroy
    respond_to do |format|
      format.html { redirect_to table_service_orders_url, notice: 'Table service order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_table_service_order
      @table_service_order = TableServiceOrder.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def table_service_order_params
      params.require(:table_service_order).permit(:order_id, :service_id, :price_fact, :info)
    end
end
