require "test_helper"

feature "Creating a post" do

  scenario "unauthenticated site visitors cannot visit new_post_path" do
    visit new_post_path
    page.must_have_content "You need to sign in or sign up before continuing"
  end

  scenario "unauthenticated site vistiors cannot see new post button" do
    visit posts_path
    page.wont_have_link "New Post"
  end

  scenario "authors can't publish" do
    sign_in(:author)
    visit new_post_path
    page.wont_have_field('Published')
  end

  scenario "editors can publish" do
    sign_in(:editor)
    visit new_post_path
    page.must_have_field('Published')
    fill_in "Title", with: posts(:ac).title
    fill_in "Body", with: posts(:ac).body
    check "Published"
    click_on "Submit"
    page.text.must_include "Status: Published"
  end

  scenario "submit form data to create a new post" do
    sign_in(:author)
    visit new_post_path
    fill_in "Title", with: posts(:ac).title
    fill_in "Body", with: posts(:ac).body
    click_on "Submit"
    page.text.must_include "Post was successfully created"
    page.text.must_include posts(:ac).title
    page.has_css? ".blog-author"
    page.text.must_include users(:author).email
    page.text.must_include "Status: Unpublished"
  end
end
