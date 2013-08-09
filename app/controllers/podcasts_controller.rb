class PodcastsController < ApplicationController
  expose(:podcasts)

  before_filter :welcome

  def index
    respond_to do |format|
      format.json { render json: { podcasts: podcasts.map(&:to_hash) } }
      format.html { redirect_to '/#/podcasts' }
    end
  end
end
