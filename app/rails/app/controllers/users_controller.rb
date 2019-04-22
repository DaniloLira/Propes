class UsersController < ApplicationController
  
  def index
    # This action is intended to show all users that are registered in the database 
    @users = User.all
  end
  
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(user_params)
      if @user.save
        redirect_to @user, notice: "Criação bem sucedida !"
        sign_in 
      else 
        render action: :new
    end
  end
  
  def show
    @user = User.find(params[:id])
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end
