module Sluggify
  def self.included(base)
    base.extend ClassMethods
  end

  def slug!
    self[:slug] = Slug.create(send(self.class.slug_attribute))
  end

  module ClassMethods
    def has_slug(attr)
      class_variable_set(:@@slug_attribute, attr)
      before_save :slug!
    end

    def slug_attribute
      class_variable_get(:@@slug_attribute)
    end
  end
end
