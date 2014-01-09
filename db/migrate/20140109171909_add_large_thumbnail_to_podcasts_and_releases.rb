class AddLargeThumbnailToPodcastsAndReleases < ActiveRecord::Migration
  def change
    add_column :podcasts, :large_cover_src, :string
    add_column :releases, :large_cover_src, :string
  end
end
