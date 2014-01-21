require "test_helper"

feature "As the site owner, I want to edit a project so that I can correct typos" do
  scenario "edting an existing project" do
    visit edit_project_path(projects(:usc))
    fill_in "Name", with: "My Awesome Portfolio"
    click_on "Update Project"
    page.text.must_include "Successfully Updated"
    page.text.must_include "My Awesome Portfolio"
    page.text.wont_include "John Jensen Portfolio"
  end
end
