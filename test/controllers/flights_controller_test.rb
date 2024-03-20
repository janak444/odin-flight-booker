require "test_helper"

class FlightsControllerTest < ActionDispatch::IntegrationTest
  test "should get inex" do
    get flights_inex_url
    assert_response :success
  end
end
