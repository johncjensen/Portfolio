require "test_helper"

feature "As the site visitor, I want to see a single portfolio project" do
  scenario "view single portfolio project" do
    visit project_path(projects(:usc))
    page.text.must_include "Joomla"
  end
end
