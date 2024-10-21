require "test_helper"

class TimeLimitsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get time_limits_index_url
    assert_response :success
  end

  test "should get show" do
    get time_limits_show_url
    assert_response :success
  end
end
