class SessionsController < ApplicationController
  def index
  end
  
  def new
    @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && User.authenticate(params[:password])
      session[:user.id] = user.id
      redirect_to root_path, notice: 'You successfully signed in!'
    else
      render :new, alert: 'Invalid username or password'
    end
  end
end
