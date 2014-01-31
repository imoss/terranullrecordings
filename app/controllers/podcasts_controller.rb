class PodcastsController < ApplicationController
  expose(:podcasts)

  def index
    respond_to do |format|
      format.json { render json: { podcasts: podcasts.map(&:to_hash) } }
      format.html { redirect_to '/#/podcasts' }
    end
  end
end
