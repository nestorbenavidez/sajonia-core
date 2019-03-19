require 'test_helper'

class PledgeesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pledgee = pledgees(:one)
  end

  test "should get index" do
    get pledgees_url
    assert_response :success
  end

  test "should get new" do
    get new_pledgee_url
    assert_response :success
  end

  test "should create pledgee" do
    assert_difference('Pledgee.count') do
      post pledgees_url, params: { pledgee: { name: @pledgee.name } }
    end

    assert_redirected_to pledgee_url(Pledgee.last)
  end

  test "should show pledgee" do
    get pledgee_url(@pledgee)
    assert_response :success
  end

  test "should get edit" do
    get edit_pledgee_url(@pledgee)
    assert_response :success
  end

  test "should update pledgee" do
    patch pledgee_url(@pledgee), params: { pledgee: { name: @pledgee.name } }
    assert_redirected_to pledgee_url(@pledgee)
  end

  test "should destroy pledgee" do
    assert_difference('Pledgee.count', -1) do
      delete pledgee_url(@pledgee)
    end

    assert_redirected_to pledgees_url
  end
end
