class ServicesController < ApplicationController
  before_action :set_service, only: [:show, :edit, :update, :destroy]

  # GET /services
  # GET /services.json
  def index
    @services = Service.all
    respond_to do |format|
      format.html
      format.json { render json: @services.map{|t| {id: t.id, name: "#{t.name} (#{t.categori.name})" } } }
        end
  end

  # GET /services/1
  # GET /services/1.json
  def show
  end

  # GET /services/new
  def new
    @service = Service.new
    @categori_all = Categori.all
  end

  # GET /services/1/edit
  def edit
    @categori_all = Categori.all
  end

  # POST /services
  # POST /services.json
  def create
    @service = Service.new(service_params)
    respond_to do |format|
      if @service.save
        format.html { redirect_to @service, notice: 'Добавлено успешно.' }
        format.json { render :show, status: :created, location: @service }
      else
        format.html { render :new }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /services/1
  # PATCH/PUT /services/1.json
  def update
    respond_to do |format|
      if @service.update(service_params)
        format.html { redirect_to @service, notice: 'Обновлено успешно.' }
        format.json { render :show, status: :ok, location: @service }
      else
        format.html { render :edit }
        format.json { render json: @service.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /services/1
  # DELETE /services/1.json
  def destroy
    @service.destroy
    respond_to do |format|
      format.html { redirect_to services_url, notice: 'Удалено успешно.' }
      format.json { head :no_content }
    end
  end

  def get_services_grup
    # если пожелаешь избавится от того что бы в заказе сервисы сортировались при вводе названия то уберешь
    #  where("services.name like ?", "%%#{params[:q]}%"),  в двух ниже запросах
        @services = if params[:region].blank?
                      Service.joins(:prices).
                          where("prices.value is not null").
                          where("prices.data_price < '#{Date.current}'").
                          where("services.name like ?", "%%#{params[:q]}%").
                          distinct
                else
                  Service.joins(:prices).
                      where("prices.value is not null").
                      where("prices.data_price < '#{Date.current}'").
                      where("services.categori_id = ?", params[:region]).
                      where("services.name like ?", "%%#{params[:q]}%").
                      distinct
                   end
        respond_to do |format|
          format.json { render json: @services.map{|t| {id: t.id, name: "#{t.name} (#{t.categori.name})" } } }
        end
    end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_service
      @service = Service.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def service_params
      params.require(:service).permit(:name, :comment, :categori_id, :discount)
    end
end
