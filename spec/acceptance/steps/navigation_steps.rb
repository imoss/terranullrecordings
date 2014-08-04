module NavigationSteps
  step "I am on the releases page" do
    visit releases_path
  end

  step "I am on the news page" do
    visit news_items_path
  end

  step "I am on the podcasts page" do
    visit podcasts_path
  end

  step "I am on the show page for that release" do
    visit release_path(@release.slug)
  end

  step "I am on the releases admin index page" do
    visit admin_releases_path
  end
end
