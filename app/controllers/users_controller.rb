class UsersController < ApplicationController
  before_action :check_for_login, :only => [:index, :show, :edit, :update]
  before_action :check_for_admin, :only => [:index, :destroy]

  def index
    @users = User.all
  end

  # User profile
  def show
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path # TODO: Change this to User profile page
    else
      render :new # create the form in new.html.erb file
    end
  end

  def edit
    @user = @current_user # need current user because otherwise can edit other users in url
  end

  def update
    @current_user.update user_params
    redirect_to show_user_path
  end

  def destroy
    user = User.find params[:id]
    user.destroy
    redirect_to users_path
  end

  def summary

  end

  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation, :name)
  end

end
