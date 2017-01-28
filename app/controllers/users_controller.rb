class UsersController < ApplicationController
  before_action :find_user, except: :index
  def index
    @users = User.all.decorate.in_groups_of(4, false)
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render :edit
    end
  end

  private

  def find_user
    @user = User.find(params[:id])
  end

  def user_params
    if params[:user].try(:[], :password).blank? && params[:user].try(:[], :password_confirmation).blank?
      params[:user].delete(:password)
      params[:user].delete(:password_confirmation)
    end

    params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :avatar)
  end
end
