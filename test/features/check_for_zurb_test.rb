require "test_helper"

feature "Check for zurb foundation" do
  scenario "see large-10 class is present " do
    visit root_path
    page.source.must_include("foundation.js")
  end
end
