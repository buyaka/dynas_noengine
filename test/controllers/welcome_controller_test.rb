require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get plan" do
    get :plan
    assert_response :success
  end

  test "should get doc" do
    get :doc
    assert_response :success
  end

  test "should get help" do
    get :help
    assert_response :success
  end

end
