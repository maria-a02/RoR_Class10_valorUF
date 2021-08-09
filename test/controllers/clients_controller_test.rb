require 'test_helper'

class ClientsControllerTest < ActionDispatch::IntegrationTest
  test "should get by_name" do
    get clients_by_name_url
    assert_response :success
  end

end
