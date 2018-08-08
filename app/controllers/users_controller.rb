class UsersController < ApplicationController
  def create()
    User.create(user_params)
    redirect_to '/'
  end
  def show()
    @users = User.all
    @user = User.new
    render :user
  end
  def delete()
  end
  def user_params
    params.require(:user).permit(:name, :email, :bio)
  end
end
