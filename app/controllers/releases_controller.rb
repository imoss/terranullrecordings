class ReleasesController < ApplicationController
  expose(:releases)
  expose(:release) { Release.find_by(slug: params[:id]) }

  def index
    respond_to do |format|
      format.json { render json: { releases: releases.map(&:to_hash) } }
      format.html { redirect_to '/#/releases' }
    end
  end

  def show
    respond_to do |format|
      format.json { render json: { release: release.to_hash } }
      format.html { redirect_to "/#/release/#{release.id}" }
    end
  end
end
