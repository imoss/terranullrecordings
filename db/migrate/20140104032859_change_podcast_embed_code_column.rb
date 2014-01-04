class ChangePodcastEmbedCodeColumn < ActiveRecord::Migration
  def change
    change_column :podcasts, :embed_code, :text
  end
end
