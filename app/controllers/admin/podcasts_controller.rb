class Admin::PodcastsController < AdminController
  expose(:podcasts, attributes: :podcast_params)
  expose(:podcast)

  def create
    redirect_to podcast_path(podcast.slug) if podcast.save
  end

  def destroy
    redirect_to action: :index if podcast.destroy
  end

  def update
    redirect_to podcast_path(podcast.slug) if podcast.save
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
