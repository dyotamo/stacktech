require 'test_helper'

class UtilitiesControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get utilities_view_url
    assert_response :success
  end

  test "should get update" do
    get utilities_update_url
    assert_response :success
  end

  test "should get new" do
    get utilities_new_url
    assert_response :success
  end

  test "should get create" do
    get utilities_create_url
    assert_response :success
  end

  test "should get destroy" do
    get utilities_destroy_url
    assert_response :success
  end

end
