require "test_helper"

feature "Check for zurb foundation" do
  scenario "see large-8 class is present " do
    visit root_path
    page.source.must_include("large-8")
  end
end
