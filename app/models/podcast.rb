class Podcast < ActiveRecord::Base
  include Sluggify

  has_slug :title

  def to_hash
    {
      id: slug,
      title: title,
      artist: artist,
      description: description,
      listen_link: listen_link,
      embed_code: embed_code
    }
  end
end
