require "test_helper"

feature "As the site owner, I want to delete a portfolio item so that I can keep the list focused on my best work" do
  scenario "delete a portfolio project" do
    visit projects_path
    portfolioitem = projects(:otb).name
    first(:link, 'Destroy').click
    page.wont_have_content portfolioitem
  end
end
