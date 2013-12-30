class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # before_filter :temporary_redirect

  private
  def welcome
    session[:welcomed] = true
  end

  def temporary_redirect
    unless controller_name == 'welcome' && action_name == 'index'
      redirect_to welcome_index_path
    end
  end
end
