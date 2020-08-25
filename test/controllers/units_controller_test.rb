require 'test_helper'

class UnitsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get units_new_url
    assert_response :success
  end

  test "should get create" do
    get units_create_url
    assert_response :success
  end

  test "should get edit" do
    get units_edit_url
    assert_response :success
  end

  test "should get update" do
    get units_update_url
    assert_response :success
  end

  test "should get destroy" do
    get units_destroy_url
    assert_response :success
  end

end
