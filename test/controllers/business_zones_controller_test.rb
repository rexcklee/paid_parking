require "test_helper"

class BusinessZonesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get business_zones_index_url
    assert_response :success
  end

  test "should get show" do
    get business_zones_show_url
    assert_response :success
  end
end
