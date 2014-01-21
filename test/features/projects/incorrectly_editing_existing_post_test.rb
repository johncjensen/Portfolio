require "test_helper"

feature "As the site owner, I want to edit a project with a wrong input" do
scenario "incorrectly editing an existing project" do
  visit edit_project_path(projects(:otb))
  fill_in "Name", with: "Err"
  click_on "Update Project"
  page.text.must_include "prohibited"
  page.text.must_include "Name is too short"
end
end
