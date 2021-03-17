require 'test_helper'

class TeacherMessagesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get teacher_messages_create_url
    assert_response :success
  end

end
