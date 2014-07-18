require 'test_helper'

class SiteControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
  end

  test "should get gallery" do
    get :gallery
    assert_response :success
  end

  test "should get menu" do
    get :menu
    assert_response :success
  end

  test "should get catering" do
    get :catering
    assert_response :success
  end

end
