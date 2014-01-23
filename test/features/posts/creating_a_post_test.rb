require "test_helper"

feature "Creating a post" do
  scenario "submit form data to create a new post" do

    visit new_user_session_path
    fill_in "Email", with: "batman@gotham.com"
    fill_in "Password", with: "grapplinghook89"
    page.find("[type='submit']").click

    visit new_post_path
    fill_in "Title", with: posts(:ac).title
    fill_in "Body", with: posts(:ac).body
    click_on "Submit"
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:ac).title
    page.has_css? ".blog-author"
    page.text.must_include "batman@gotham.com"
  end
end
