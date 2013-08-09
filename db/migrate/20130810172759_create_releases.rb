class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :title
      t.string :artist
      t.string :catalog_number
      t.string :slug
      t.string :cover_src
      t.string :cover_thumbnail_src
      t.text :description
      t.date :release_date
    end
  end
end
