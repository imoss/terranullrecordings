module FabricationSteps
  step "the following release:" do |table|
    attributes = build_attributes_from_vertical_table(table)
    @release = Fabricate(:release, attributes)
  end

  step "the following releases:" do |table|
    @releases = table.hashes.map do |attributes|
      Fabricate(:release, attributes)
    end
  end

  step "the following news items:" do |table|
    @news_items = table.hashes.map do |attributes|
      Fabricate(:news_item, attributes)
    end
  end

  step "the following news item:" do |table|
    attributes = build_attributes_from_vertical_table(table)
    @news_item = Fabricate(:news_item, attributes)
  end

  step "the following podcasts:" do |table|
    @podcasts = table.hashes.map do |attributes|
      Fabricate(:podcast, attributes)
    end
  end

  step "the following podcast:" do |table|
    attributes = build_attributes_from_vertical_table(table)
    @podcast = Fabricate(:podcast, attributes)
  end

  step "an admin" do
    @admin = Fabricate(:admin)
  end

  def build_attributes_from_vertical_table(table)
    table.raw.inject({}) do |hash, attribute|
      hash.merge(attribute.first.to_sym => attribute.last)
    end
  end
end
