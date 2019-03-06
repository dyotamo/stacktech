require 'test_helper'

class MyStackControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get my_stack_index_url
    assert_response :success
  end

  test "should get update" do
    get my_stack_update_url
    assert_response :success
  end

end
