require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get start_page" do
    get pages_start_page_url
    assert_response :success
  end
end
