class AddDateTextToNewsAndPodcasts < ActiveRecord::Migration
  def change
    add_column :podcasts, :date_text, :string
    add_column :news_items, :date_text, :string
  end
end
