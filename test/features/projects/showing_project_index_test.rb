require "test_helper"

feature "As the site visitor, I want to see a developer's portfolio" do
  scenario "viewing all projects" do
    visit projects_path
    page.text.must_include "Only The Beat"
    page.text.must_include "USC Events"
  end
end



