require 'test_helper'

class Tutor::HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tutor_home_index_url
    assert_response :success
  end

end
