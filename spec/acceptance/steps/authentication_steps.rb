module AuthenticationSteps
  step "that admin is signed in" do
    visit new_admin_session_path
    fill_in "Email", with: @admin.email
    fill_in "Password", with: @admin.password
    click_button "Sign in"
  end
end
