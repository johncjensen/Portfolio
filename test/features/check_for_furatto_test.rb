require "test_helper"

feature "Check for zurb furatto" do
  scenario "see if main javascript file is present " do
    visit root_path
    page.source.must_include("furatto.min.js")
  end
end
