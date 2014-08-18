class Podcast < ActiveRecord::Base
  include Sluggify

  has_slug :title

  default_scope -> { order 'created_at DESC' }

  def to_hash
    {
      id: slug,
      title: title,
      artist: artist,
      tracklist: tracklist,
      embed_code: embed_code,
      large_cover_src: large_cover_src,
      thumbnail_src: thumbnail_src
    }
  end
end
