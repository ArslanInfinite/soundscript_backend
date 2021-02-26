require "test_helper"

class SoundsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get sounds_show_url
    assert_response :success
  end
end
