class AddTracklistToPodcast < ActiveRecord::Migration
  def change
    add_column :podcasts, :tracklist, :text
  end
end
