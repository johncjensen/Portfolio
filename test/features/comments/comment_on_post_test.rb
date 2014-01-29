require "test_helper"

feature "As a site visitor I want to write a comment from a blog post page" do
  scenario "so that I can troll the author" do
    visit post_path(posts(:ac).id)
    save_and_open_page

    # fill_in "Email", with: "batman@gotham.com"
    # fill_in "Password", with: "grapplinghook89"
    # page.find("[type='submit']").click
    # click_on "Sign out"
    # visit edit_user_registration_path
    # page.text.must_include "You need to sign in or sign up before continuing."
  end
end
