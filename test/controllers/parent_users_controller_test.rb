require 'test_helper'

class ParentUsersControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get parent_users_show_url
    assert_response :success
  end

end
