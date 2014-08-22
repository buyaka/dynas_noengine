require 'test_helper'

class DashboardControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get apps" do
    get :apps
    assert_response :success
  end

  test "should get resources" do
    get :resources
    assert_response :success
  end

end
