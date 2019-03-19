require 'test_helper'

class ReceptionPointsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reception_point = reception_points(:one)
  end

  test "should get index" do
    get reception_points_url
    assert_response :success
  end

  test "should get new" do
    get new_reception_point_url
    assert_response :success
  end

  test "should create reception_point" do
    assert_difference('ReceptionPoint.count') do
      post reception_points_url, params: { reception_point: { name: @reception_point.name } }
    end

    assert_redirected_to reception_point_url(ReceptionPoint.last)
  end

  test "should show reception_point" do
    get reception_point_url(@reception_point)
    assert_response :success
  end

  test "should get edit" do
    get edit_reception_point_url(@reception_point)
    assert_response :success
  end

  test "should update reception_point" do
    patch reception_point_url(@reception_point), params: { reception_point: { name: @reception_point.name } }
    assert_redirected_to reception_point_url(@reception_point)
  end

  test "should destroy reception_point" do
    assert_difference('ReceptionPoint.count', -1) do
      delete reception_point_url(@reception_point)
    end

    assert_redirected_to reception_points_url
  end
end
