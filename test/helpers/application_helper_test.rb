require 'test_helper'

class ApplicationHelperTest < ActionView::TestCase
  
  # Test the full_title helper method in app/helpers/application_helper
  test "full title helper" do
    # full_title must return the base title when no title is provided
    assert_equal full_title, "Ruby on Rails Tutorial Sample App"
    # full_title must return "ProvidedTitle | Ruby..." when title is provided
    assert_equal full_title("Help"), "Help | Ruby on Rails Tutorial Sample App"
  end
end