class StatusOfImplementationsController < ApplicationController
  before_action :set_status_of_implementation, only: [:show, :edit, :update, :destroy]

  # GET /status_of_implementations
  # GET /status_of_implementations.json
  def index
    @status_of_implementations = StatusOfImplementation.all
  end

  # GET /status_of_implementations/1
  # GET /status_of_implementations/1.json
  def show
  end

  # GET /status_of_implementations/new
  def new
    @order_all = Order.all
    @user_all = User.all
    @status_of_implementation = StatusOfImplementation.new
    @status_of_implementation.assignments.build
  end

  # GET /status_of_implementations/1/edit
  def edit
    @order_all = Order.all
    @user_all = User.all
  end

  # POST /status_of_implementations
  # POST /status_of_implementations.json
  def create
    @status_of_implementation = StatusOfImplementation.new(status_of_implementation_params)

    respond_to do |format|
      if @status_of_implementation.save
        format.html { redirect_to @status_of_implementation, notice: 'Status of implementation was successfully created.' }
        format.json { render :show, status: :created, location: @status_of_implementation }
      else
        format.html { render :new }
        format.json { render json: @status_of_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /status_of_implementations/1
  # PATCH/PUT /status_of_implementations/1.json
  def update
    respond_to do |format|
      if @status_of_implementation.update(status_of_implementation_params)
        format.html { redirect_to @status_of_implementation, notice: 'Status of implementation was successfully updated.' }
        format.json { render :show, status: :ok, location: @status_of_implementation }
      else
        format.html { render :edit }
        format.json { render json: @status_of_implementation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /status_of_implementations/1
  # DELETE /status_of_implementations/1.json
  def destroy
    @status_of_implementation.destroy
    respond_to do |format|
      format.html { redirect_to status_of_implementations_url, notice: 'Status of implementation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_status_of_implementation
      @status_of_implementation = StatusOfImplementation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def status_of_implementation_params
      params.require(:status_of_implementation).permit(
        :order_id, 
        :date_status, 
        :status, 
        assignments_attributes: [ 
          :id, 
          :user_id,
          :time_word, 
          :status,
          :succinctly,
          :description,
          "_destroy"
        ]
      )
    end
end
