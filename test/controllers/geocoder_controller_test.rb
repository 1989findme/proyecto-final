require 'test_helper'

class GeocoderControllerTest < ActionDispatch::IntegrationTest
  test "should get findaddress" do
    get geocoder_findaddress_url
    assert_response :success
  end

end
