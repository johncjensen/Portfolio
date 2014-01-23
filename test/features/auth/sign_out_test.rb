require "test_helper"

feature "As the site owner, I want to be able to sign out" do
  scenario "so that people dont change my site" do
    visit new_user_session_path
    fill_in "Email", with: "batman@gotham.com"
    fill_in "Password", with: "grapplinghook89"
    page.find("[type='submit']").click
    click_on "Sign out"
    visit edit_user_registration_path
    page.text.must_include "You need to sign in or sign up before continuing."
  end
end
