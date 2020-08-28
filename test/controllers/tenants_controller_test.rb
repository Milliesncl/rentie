require 'test_helper'

class TenantsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get tenants_new_url
    assert_response :success
  end

  test "should get create" do
    get tenants_create_url
    assert_response :success
  end

end
