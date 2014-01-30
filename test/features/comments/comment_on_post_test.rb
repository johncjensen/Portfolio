require "test_helper"

feature "As a site visitor I want to write a comment from a blog post page" do
  scenario "so that I can troll the author" do
    visit post_path(posts(:ac).id)
  end
end
