module NavigationSteps
  step "I am on the releases page" do
    visit releases_path
  end

  step "I am on the show page for that release" do
    visit release_path(@release.slug)
  end
end
