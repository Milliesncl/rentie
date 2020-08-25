require 'test_helper'

class ContractorsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get contractors_index_url
    assert_response :success
  end

  test "should get new" do
    get contractors_new_url
    assert_response :success
  end

  test "should get create" do
    get contractors_create_url
    assert_response :success
  end

  test "should get edit" do
    get contractors_edit_url
    assert_response :success
  end

  test "should get update" do
    get contractors_update_url
    assert_response :success
  end

  test "should get destroy" do
    get contractors_destroy_url
    assert_response :success
  end

end
