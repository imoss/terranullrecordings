class CreatePodcasts < ActiveRecord::Migration
  def change
    create_table :podcasts do |t|
      t.string :title
      t.string :artist
      t.text :description
      t.string :listen_link
      t.string :embed_code
      t.string :slug
      t.timestamps
    end
  end
end
