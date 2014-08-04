class Admin::ReleasesController < AdminController
  expose(:release, attributes: :release_params)
  expose(:releases)

  def create
    redirect_to release_path(release.slug) if release.save
  end

  def destroy
    redirect_to action: :index if release.destroy
  end

  def update
    redirect_to release_path(release.slug) if release.save
  end

  private
  def release_params
    params.require(:release).permit(
      :title,
      :artist,
      :catalog_number,
      :cover_src,
      :cover_thumbnail_src,
      :large_cover_src,
      :release_date,
      :juno_link,
      :itunes_link,
      :beatport_link,
      :bandcamp_link,
      :description
    )
  end
end
