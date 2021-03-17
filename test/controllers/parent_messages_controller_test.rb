require 'test_helper'

class ParentMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get parent_messages_create_url
    assert_response :success
  end

end
