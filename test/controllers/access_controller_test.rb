require "test_helper"

class AccessControllerTest < ActionDispatch::IntegrationTest
  test "should get Tokens" do
    get access_Tokens_url
    assert_response :success
  end
end
