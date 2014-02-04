class AddBuyLinksToReleases < ActiveRecord::Migration
  def change
    add_column :releases, :juno_link, :string
    add_column :releases, :itunes_link, :string
    add_column :releases, :beatport_link, :string
  end
end
