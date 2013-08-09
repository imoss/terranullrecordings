class Release < ActiveRecord::Base
  include Sluggify

  has_slug :title

  def to_hash
    {
      id: slug,
      title: title,
      artist: artist,
      description: description,
      catalog_number: catalog_number,
      release_date: release_date,
      cover_src: cover_src,
      cover_thumbnail_src: cover_thumbnail_src
    }
  end
end
