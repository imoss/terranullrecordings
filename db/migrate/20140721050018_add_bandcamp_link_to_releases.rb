class AddBandcampLinkToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :bandcamp_link, :string
  end
end
