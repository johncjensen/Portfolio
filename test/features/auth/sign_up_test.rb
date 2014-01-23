require "test_helper"

feature "As the site owner, I want to be able to signup for an account" do
  scenario "signup for account" do

    visit new_user_registration_path
    fill_in "Email", with: "john@doe.com"
    fill_in "Password", with: "passwordawesomething"
    fill_in "Password confirmation", with: "passwordawesomething"
    page.find("[type='submit']").click
    page.text.must_include "successfully"
  end
end
