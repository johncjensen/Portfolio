require "test_helper"

class StaticHomePageTest < Capybara::Rails::TestCase
  test "sanity" do
    visit root_path
    assert_content page, "Jensen"
    refute_content page, "Goobye All!"
  end
end
