class UsersController < ApplicationController
  def home
  end

  def profile
  end

  def edit
    @user = user.find(params[:id])
  end

  def update
    @user = user.find(params[:id])
    @user.update(params[user_params])
    redirect_to profile_users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :phone)
  end
end
