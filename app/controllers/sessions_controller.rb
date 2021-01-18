class SessionsController < ApplicationController
  def index
    redirect_to sessions_path
  end

  def new
    # @user = User.new
  end

  def create
    user = User.find_by_username(params[:username])
    if user && User.authenticate(params[:password])
      session[:user.id] = user.id
      redirect_to new_session_path, notice: 'You successfully signed in!'
    else
      render :new, alert: 'Invalid username or password'
    end
  end

  def destroy
    session.delete(:current_user_id)
    @current_user = nil
    redirect_to new_path
  end
end
