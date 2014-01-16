require "test_helper"

feature "Deleting a post" do
  scenario "post is deleted with a click" do
    visit posts_path
    shit = posts(:ac).title
    first(:link, 'Destroy').click
    # page.find("tr:last").click_on "Destroy"
    page.wont_have_content shit
  end
end
