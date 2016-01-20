require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  test "should get welcome page" do
    get :index
    assert_response :success
  end

  test "should get index page when authenticated as a user" do
    sign_in users(:steve)
    get :index
    assert_response :success
  end

  test "should redirect to login page when viewing index page whilst not authenticated" do
    get :index
    assert_redirected_to new_user_session_path
  end

end
