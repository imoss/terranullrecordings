module WebSteps
  step "I should see :text" do |text|
    expect(page).to have_content(text)
  end

  step "I should not see :text" do |text|
    expect(page).not_to have_content(text)
  end

  step "I should see an image with path :image_path" do |image_path|
    expect(page).to have_xpath("//img[@src='#{image_path}']")
  end

  step "I should see a link to :link" do |link|
    expect(page).to have_xpath("//a[@href='#{link}']")
  end

  step "I click :link" do |link|
    click_link link
  end

  step "I press :button" do |button|
    click_button button
  end

  step "I should see the image :image_path which links to :release_path" do |image_path, release_path|
    link = find(:xpath, "//a[@href='#{release_path}']")
    within(link) { expect(page).to(have_xpath("//img[@src='#{image_path}']")) }
  end

  step "I fill in :field with :content" do |field, content|
    fill_in field, with: content
  end
end
