require "test_helper"

feature "Deleting a post" do
  scenario "post is deleted with a click" do
    shit = posts(:mb).title
    visit posts_path
    page.find("tr:last").click_on "Destroy"
    page.wont_have_content shit
  end
end
