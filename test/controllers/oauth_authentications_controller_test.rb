require "test_helper"

class OauthAuthenticationsControllerTest < ActionDispatch::IntegrationTest
  test "should get start" do
    get oauth_authentications_start_url
    assert_response :success
  end
end
