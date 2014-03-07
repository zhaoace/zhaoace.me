require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get say" do
    get :say
    assert_response :success
  end

end
