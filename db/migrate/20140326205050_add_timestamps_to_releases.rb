class AddTimestampsToReleases < ActiveRecord::Migration
  def change
    add_timestamps(:releases)
  end
end
