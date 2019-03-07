require 'test_helper'

class ToolControllerTest < ActionDispatch::IntegrationTest
  test "should get view" do
    get tool_view_url
    assert_response :success
  end

end
