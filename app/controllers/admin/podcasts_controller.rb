class Admin::PodcastsController < AdminController
  expose(:podcast, attributes: :podcast_params)
  expose(:podcasts)

  def create
    redirect_to podcasts_path if podcast.save
  end

  def destroy
    redirect_to action: :index if podcast.destroy
  end

  def update
    redirect_to podcasts_path if podcast.save
  end

  private
  def podcast_params
    params.require(:podcast).permit(
      :title,
      :artist,
      :thumbnail_src,
      :large_cover_src,
      :embed_code,
      :tracklist
    )
  end
end
