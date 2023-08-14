require "test_helper"

class EmailControllerTest < ActionDispatch::IntegrationTest
  test "should get new_eamil" do
    get email_new_eamil_url
    assert_response :success
  end

  test "should get send_email_to_specific" do
    get email_send_email_to_specific_url
    assert_response :success
  end
end
