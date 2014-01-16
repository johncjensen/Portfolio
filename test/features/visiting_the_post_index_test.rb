require "test_helper"

feature "Visiting the Post" do
  scenario "with existing posts" do
    visit post_path(posts(:ac).id)
    page.text.must_include posts(:ac).title
  end
end
