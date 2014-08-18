class RemoveRedundantColumnsFromPodcast < ActiveRecord::Migration
  def change
    remove_column :podcasts, :listen_link, :string
    remove_column :podcasts, :date_text, :string
    remove_column :podcasts, :description, :string
  end
end
