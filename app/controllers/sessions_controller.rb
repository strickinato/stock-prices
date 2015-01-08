class SessionsController < ApplicationController
  def create
    @user = User.new(user_params)
    username = user_params[:username]
    password = user_params[:password]
    user = User.find_by_credentials(username, password)

    if user
      login!(user)
      flash.now[:errors] = ["success"]
      render :new
    else
      flash.now[:errors] = ["Invalid username Or Password"]
      render :new
    end
  end

  def new
    @user = User.new
    render :new
  end

  def destroy
    logout
    @user = User.new
    render :new
  end

  private
  def user_params
    params.require(:user).permit(:password, :username)
  end
end
