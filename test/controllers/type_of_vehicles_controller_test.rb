require 'test_helper'

class TypeOfVehiclesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_of_vehicle = type_of_vehicles(:one)
  end

  test "should get index" do
    get type_of_vehicles_url
    assert_response :success
  end

  test "should get new" do
    get new_type_of_vehicle_url
    assert_response :success
  end

  test "should create type_of_vehicle" do
    assert_difference('TypeOfVehicle.count') do
      post type_of_vehicles_url, params: { type_of_vehicle: { name: @type_of_vehicle.name } }
    end

    assert_redirected_to type_of_vehicle_url(TypeOfVehicle.last)
  end

  test "should show type_of_vehicle" do
    get type_of_vehicle_url(@type_of_vehicle)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_of_vehicle_url(@type_of_vehicle)
    assert_response :success
  end

  test "should update type_of_vehicle" do
    patch type_of_vehicle_url(@type_of_vehicle), params: { type_of_vehicle: { name: @type_of_vehicle.name } }
    assert_redirected_to type_of_vehicle_url(@type_of_vehicle)
  end

  test "should destroy type_of_vehicle" do
    assert_difference('TypeOfVehicle.count', -1) do
      delete type_of_vehicle_url(@type_of_vehicle)
    end

    assert_redirected_to type_of_vehicles_url
  end
end
