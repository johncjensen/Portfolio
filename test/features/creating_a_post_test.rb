require "test_helper"

feature "Creating a post" do
  scenario "submit form data to create a new post" do
    visit new_post_path
    fill_in "Title", with: posts(:ac).title
    fill_in "Body", with: posts(:ac).body
    click_on "Create Post"
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:ac).title
  end
end
