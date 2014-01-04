class AddThumbnailSrcToPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :thumbnail_src, :string
  end
end
