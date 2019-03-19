require 'test_helper'

class VarietiesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @variety = varieties(:one)
  end

  test "should get index" do
    get varieties_url
    assert_response :success
  end

  test "should get new" do
    get new_variety_url
    assert_response :success
  end

  test "should create variety" do
    assert_difference('Variety.count') do
      post varieties_url, params: { variety: { name: @variety.name } }
    end

    assert_redirected_to variety_url(Variety.last)
  end

  test "should show variety" do
    get variety_url(@variety)
    assert_response :success
  end

  test "should get edit" do
    get edit_variety_url(@variety)
    assert_response :success
  end

  test "should update variety" do
    patch variety_url(@variety), params: { variety: { name: @variety.name } }
    assert_redirected_to variety_url(@variety)
  end

  test "should destroy variety" do
    assert_difference('Variety.count', -1) do
      delete variety_url(@variety)
    end

    assert_redirected_to varieties_url
  end
end
