require 'test_helper'

class HomehospitalControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

end
