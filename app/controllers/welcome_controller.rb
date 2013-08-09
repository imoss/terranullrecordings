class WelcomeController < ApplicationController
  layout false

  before_filter :welcome

  def index
    session[:welcomed] = true
  end
end
