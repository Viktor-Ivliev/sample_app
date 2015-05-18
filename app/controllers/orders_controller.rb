class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders
  # GET /orders.json
  def index
    @orders = Order.all
  end

  # GET /orders/1
  # GET /orders/1.json
  def show
  end

  # GET /orders/new
  def new
    @order = Order.new
    @order.grafs.build
    @client_all = Client.all
    @categori_all = Categori.all
  end

  # GET /orders/1/edit
  def edit
    @client_all = Client.all
    @categori_all = Categori.all
    @order.service_ids = @order.services.pluck(:id).join(',')
  end

  # POST /orders
  # POST /orders.json
  def create

    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        add_service(@order, order_params[:service_ids])
        format.html { redirect_to @order, notice: 'Заказ был успешно добавлен' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders/1
  # PATCH/PUT /orders/1.json
  def update
    respond_to do |format|

      if @order.update(order_params)
        add_service(@order, order_params[:service_ids])
        format.html { redirect_to @order, notice: 'Заказ был успешно обновлен' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders/1
  # DELETE /orders/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url, notice: 'Заказ был успешно удален' }
      format.json { head :no_content }
    end
  end

  def get_price
        sum = 0
        unless params[:services].blank?
                 service_ids = params[:services].split(',').uniq.map(&:to_i)
                 services = Service.where(id: service_ids)
                 services.each do |service|
                   price = service.prices.where("data_price < '#{Date.current}'").first
                   sum += price.value
                 end
        end
      render :json => {
            :price => sum
      }
  end


  private
  def add_service(order, service_ids)
       unless service_ids.blank?
         service_ids = service_ids.split(',').uniq.map(&:to_i)
         all_services = order.services.pluck(:id)
         (service_ids - all_services).each do |id|
           unless order.services.where("services.id = ?", id).present?
             table_service_order = TableServiceOrder.create(service_id: id, order_id: order.id)
           end
         end
         TableServiceOrder.where(service_id: (all_services - service_ids)).where(order_id: order.id).destroy_all
       end
       end
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:name, :date_order,:price, :client_id, :service_ids, :info, grafs_attributes: [ :id, :date_start, :date_end, "_destroy"])
    end
end
