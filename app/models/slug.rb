class Slug < Struct.new(:string)
  def self.create(string)
    new(string).slug
  end

  def slug
    string.parameterize
  end
end
