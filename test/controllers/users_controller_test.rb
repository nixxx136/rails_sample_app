require 'test_helper'

class UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get root_path
    assert_response :success
    assert_select "a[href=?]", signup_path

    get signup_path
    assert_select "title", "Sign up | Ruby on Rails Tutorial Sample App"
    # assert_select "title", full_title("Sign up")
  end
end
