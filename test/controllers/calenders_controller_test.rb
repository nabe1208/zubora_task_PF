require "test_helper"

class CalendersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get calenders_show_url
    assert_response :success
  end
end
