require "test_helper"

feature "As a site visitor I want to write a comment on a project" do
  scenario "so that I can troll the silly project" do
    visit project_path(projects(:otb))
    fill_in "Your URL", with: comments(:cm2).author_url
    fill_in "Content", with: comments(:cm2).content
    click_on "Submit"
    page.text.must_include "Comment is awaiting moderation"
    save_and_open_page
  end
end
