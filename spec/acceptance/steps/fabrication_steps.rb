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

  def build_attributes_from_vertical_table(table)
    table.raw.inject({}) { |r, e| r.merge(e.first.to_sym => e.last) }
  end
end
