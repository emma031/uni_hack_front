require 'test_helper'

class DahyunControllerTest < ActionController::TestCase
  test "should get jaehyun" do
    get :jaehyun
    assert_response :success
  end

end
