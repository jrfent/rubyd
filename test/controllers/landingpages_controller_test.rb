require 'test_helper'

class LandingpagesControllerTest < ActionController::TestCase
  test "should get first" do
    get :first
    assert_response :success
  end

end
