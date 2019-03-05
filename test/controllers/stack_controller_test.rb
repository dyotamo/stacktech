require 'test_helper'

class StackControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get stack_view_url
    assert_response :success
  end

end
