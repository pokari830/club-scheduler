class UsersController < ApplicationController
  def index
    @user = User.find(current_user)
  end

  def create
    @user = User.new
    if @user.save
      redirect_to root_path
    else
      redirect_to
    end
  end

  private

  def user_params
    params.require(:user).permit(params[:name, :email])
  end

  def set_params
    @user = User.find(params[:id])
  end
end
