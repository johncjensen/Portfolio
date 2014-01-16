require "test_helper"

feature "Editing a post" do
  scenario "submit updates to an exiting post" do
    posts(:ac)
    visit post_path(posts(:ac).id)
    click_on "Edit"
    fill_in "Title", with: "Becoming a Web Developer"
    click_on "Update Post"
    page.text.must_include "Post was successfully updated"
    page.text.must_include "Web Developer"
  end
end
