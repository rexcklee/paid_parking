require "test_helper"

class HourlyRatesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hourly_rates_index_url
    assert_response :success
  end

  test "should get show" do
    get hourly_rates_show_url
    assert_response :success
  end
end
