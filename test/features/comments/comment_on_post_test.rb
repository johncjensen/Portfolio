require "test_helper"

feature "As a site visitor I want to write a comment from a blog post page" do
  scenario "so that I can troll the author" do
    visit post_path(posts(:ac))
    fill_in "Your URL", with: comments(:cm1).author_url
    fill_in "Content", with: comments(:cm1).content
    click_on "Submit"
    page.text.must_include "Comment is awaiting moderation"
  end
end
