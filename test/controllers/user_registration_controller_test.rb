require 'test_helper'

class UserRegistrationControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_registration_index_url
    assert_response :success
  end

end
