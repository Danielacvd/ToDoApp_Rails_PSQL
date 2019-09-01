require 'test_helper'

class CompletesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get completes_create_url
    assert_response :success
  end

end
