class AddArtSeriesToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :art_series, :integer
  end
end
