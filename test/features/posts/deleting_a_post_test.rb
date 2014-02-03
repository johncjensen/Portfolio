require "test_helper"

feature "Deleting a post" do
  scenario "post is deleted with a click" do
    sign_in(:editor)

    visit posts_path
    shit = posts(:meow).title
    first(:link, 'Destroy').click
    page.wont_have_content shit
  end
end
