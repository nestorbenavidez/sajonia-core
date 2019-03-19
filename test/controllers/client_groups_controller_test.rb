require 'test_helper'

class ClientGroupsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @client_group = client_groups(:one)
  end

  test "should get index" do
    get client_groups_url
    assert_response :success
  end

  test "should get new" do
    get new_client_group_url
    assert_response :success
  end

  test "should create client_group" do
    assert_difference('ClientGroup.count') do
      post client_groups_url, params: { client_group: { name: @client_group.name } }
    end

    assert_redirected_to client_group_url(ClientGroup.last)
  end

  test "should show client_group" do
    get client_group_url(@client_group)
    assert_response :success
  end

  test "should get edit" do
    get edit_client_group_url(@client_group)
    assert_response :success
  end

  test "should update client_group" do
    patch client_group_url(@client_group), params: { client_group: { name: @client_group.name } }
    assert_redirected_to client_group_url(@client_group)
  end

  test "should destroy client_group" do
    assert_difference('ClientGroup.count', -1) do
      delete client_group_url(@client_group)
    end

    assert_redirected_to client_groups_url
  end
end
