class HomepageController < ApplicationController
  def index
    redirect_to welcome_index_path unless session[:welcomed]
  end
end
