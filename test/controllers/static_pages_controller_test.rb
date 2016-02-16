require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get home" do
    get :home
    assert_response :success
    assert_select "title", "Home"
  end

  test "should get diagnostic" do
    get :diagnostic
    assert_response :success
    assert_select "title", "Diagnostic"
  end

  test "should get result" do
    get :result
    assert_response :success
    assert_select "title", "Result"
  end

  test "should get about" do
    get :about
    assert_response :success
    assert_select "title", "About"
  end

end
