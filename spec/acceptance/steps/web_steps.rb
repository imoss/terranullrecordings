module WebSteps
  step "I should see :text" do |text|
    page.should have_content(text)
  end

  step "I should not see :text" do |text|
    page.should_not have_content(text)
  end

  step "I should see an image with path :image_path" do |image_path|
    page.should have_xpath("//img[@src='#{image_path}']")
  end

  step "I should see a link to :link" do |link|
    page.should have_xpath("//a[@href='#{link}']")
  end

  step "I click :link" do |link|
    click_link link
  end

  step "I should see the image :image_path which links to :release_path" do |image_path, release_path|
    link = find(:xpath, "//a[@href='#{release_path}']")
    within(link) { page.should(have_xpath("//img[@src='#{image_path}']")) }
  end
end
