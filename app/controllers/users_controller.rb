class UsersController < ApplicationController

  before_action :set_user, only: %i[show destroy update edit]
  before_action :logged_in_user, only: %i[edit update]

  def index
  end

  def new
    @user = User.new
  end

  def show
  end

  def destroy
    @user.destroy
    redirect_to users_path
  end

  def update
    if @user.update(user_params)
      flash[:success] = "Profile updated"
      redirect_to users_path(@user)
    else
      render :edit
    end
  end

  def edit
  end

  def create
    @user = User.create(user_params)

    if @user.save
      log_in @user
      remember @user
      flash[:success] = "Welcome to the Sample App!"
      redirect_to users_path(@user)
    else
      render :new
    end
  end

  private

  def set_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def logged_in_user
      redirect_to login_url, notice: "Please login." unless logged_in?
  end

end
