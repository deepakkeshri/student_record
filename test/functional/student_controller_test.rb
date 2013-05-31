require 'test_helper'

class StudentControllerTest < ActionController::TestCase
  test "should get student" do
    get :student
    assert_response :success
  end

end
