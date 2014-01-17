require "test_helper"

feature "Editing a post" do
  scenario "submit updates to an exiting post" do
    posts(:ac)
    visit post_path(posts(:ac).id)
    click_on "Edit"
    fill_in "Title", with: posts(:ac).title
    click_on "Submit"
    page.text.must_include "Post was successfully updated"
    page.text.must_include posts(:ac).title
  end
end
