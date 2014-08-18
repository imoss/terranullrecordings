class NewsItem < ActiveRecord::Base
  include Sluggify

  has_slug :title

  default_scope -> { order 'created_at DESC' }

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
