class UsersController < ApplicationController
  before_action :signed_in_user, only: [:index, :edit, :update, :destroy]
  before_action :correct_user,   only: [:edit, :update]
  before_action :admin_user,     only: :destroy
  def index
    @users = User.paginate(page: params[:page])
  end
  def destroy
    User.find(params[:id]).destroy
    flash[:success] = "Пользователь удален"
    redirect_to users_url
  end
  def show
    @banner6 = Order.joins(table_service_orders: :service).where("service_id = 31")
    @user = User.find(params[:id])
    @service = @user.services.paginate(page: params[:page])
  end

  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
      sign_in @user
      flash[:success] = "Добро пожаловать"
      redirect_to @user
    else
      render 'new'
    end
  end
  def edit
    @user = User.find(params[:id])
  end
  def update
    @user = User.find(params[:id])
    param = user_params
    if user_params[:password].blank?
      param = param.except!(:password, :password_confirmation)
    end
    if @user.update_attributes(param)
      flash[:success] = "Профиль обновлён"
      redirect_to @user
    else
      render 'edit'
    end
  end


  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation, :role)
    end
  # Before filters/фильтры



  def admin_user
    redirect_to(root_url) unless current_user.role == 'Admin'
  end

  def correct_user
    @user = User.find(params[:id])
    redirect_to(root_url) unless current_user?(@user) || current_user.role != 'Developer'
  end
end
