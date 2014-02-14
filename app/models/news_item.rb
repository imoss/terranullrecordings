class NewsItem < ActiveRecord::Base
  include Sluggify

  has_slug :title

  def to_hash
    {
      id: slug,
      title: title,
      date_text: date_text,
      content: content,
      featured_image: featured_image
    }
  end
end
