require 'test_helper'

class ProcedencesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @procedence = procedences(:one)
  end

  test "should get index" do
    get procedences_url
    assert_response :success
  end

  test "should get new" do
    get new_procedence_url
    assert_response :success
  end

  test "should create procedence" do
    assert_difference('Procedence.count') do
      post procedences_url, params: { procedence: { client: @procedence.client, name: @procedence.name } }
    end

    assert_redirected_to procedence_url(Procedence.last)
  end

  test "should show procedence" do
    get procedence_url(@procedence)
    assert_response :success
  end

  test "should get edit" do
    get edit_procedence_url(@procedence)
    assert_response :success
  end

  test "should update procedence" do
    patch procedence_url(@procedence), params: { procedence: { client: @procedence.client, name: @procedence.name } }
    assert_redirected_to procedence_url(@procedence)
  end

  test "should destroy procedence" do
    assert_difference('Procedence.count', -1) do
      delete procedence_url(@procedence)
    end

    assert_redirected_to procedences_url
  end
end
