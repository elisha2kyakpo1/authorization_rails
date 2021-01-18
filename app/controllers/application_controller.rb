# frozen_string_literal: true

class ApplicationController < ActionController::Base
  # before_action :require_login

  private

  # def require_login
  #   unless logged_in?
  #     flash[:error] = 'You must be logged in to access this section'
  #     redirect_to new_session_path
  #   end
  # end

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[user_id]
  end

  helper_method :current_user
end
