require "test_helper"

feature "Deleting a post" do
  scenario "post is deleted with a click" do

    visit new_user_session_path
    fill_in "Email", with: users(:batman).email
    fill_in "Password", with: "grapplinghook89"
    page.find("[type='submit']").click

    visit posts_path
    shit = posts(:ac).title
    first(:link, 'Destroy').click
    page.wont_have_content shit
  end
end
