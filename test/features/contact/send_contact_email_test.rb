require "test_helper"

feature "Check contact form functionality" do
  scenario "so that site visitors can contact me" do
    visit contact_path
    fill_in "Name", with: "Joe Dirt"
    fill_in "Email", with: "joe@dirt.com"
    fill_in "Subject", with: "Find my parents"
    fill_in "Body", with: "have you seen them?"
    click_on "Send"
    page.text.must_include "successfully sent"
  end
end
