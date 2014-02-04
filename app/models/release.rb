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
      cover_thumbnail_src: cover_thumbnail_src,
      large_cover_src: large_cover_src,
      juno_link: juno_link,
      itunes_link: itunes_link,
      beatport_link: beatport_link,
      released: (beatport_link || juno_link || itunes_link).present?
    }
  end
end
