require "test_helper"

feature "Visiting the Post" do
  scenario "with existing posts" do
    visit post_path(posts(:ac).id)
    page.text.must_include posts(:ac).title
  end

  scenario "goto /myposts and view only my own" do
    visit new_user_session_path
    fill_in "Email", with: users(:batman).email
    fill_in "Password", with: "grapplinghook89"
    page.find("[type='submit']").click
    visit posts_path
    click_on "Show My Posts"
    page.text.must_include posts(:ac).title
    page.text.must_include posts(:mb).title
  end

end
