require 'test_helper'

class WeightDetailsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weight_detail = weight_details(:one)
  end

  test "should get index" do
    get weight_details_url
    assert_response :success
  end

  test "should get new" do
    get new_weight_detail_url
    assert_response :success
  end

  test "should create weight_detail" do
    assert_difference('WeightDetail.count') do
      post weight_details_url, params: { weight_detail: { client: @weight_detail.client, driver: @weight_detail.driver, harvest: @weight_detail.harvest, plate: @weight_detail.plate, pledgee: @weight_detail.pledgee, procedence: @weight_detail.procedence, receipt: @weight_detail.receipt, reception_date: @weight_detail.reception_date, reception_point: @weight_detail.reception_point, reception_status: @weight_detail.reception_status, remission_number: @weight_detail.remission_number, type_of_vehicle: @weight_detail.type_of_vehicle, waste_in_transit: @weight_detail.waste_in_transit } }
    end

    assert_redirected_to weight_detail_url(WeightDetail.last)
  end

  test "should show weight_detail" do
    get weight_detail_url(@weight_detail)
    assert_response :success
  end

  test "should get edit" do
    get edit_weight_detail_url(@weight_detail)
    assert_response :success
  end

  test "should update weight_detail" do
    patch weight_detail_url(@weight_detail), params: { weight_detail: { client: @weight_detail.client, driver: @weight_detail.driver, harvest: @weight_detail.harvest, plate: @weight_detail.plate, pledgee: @weight_detail.pledgee, procedence: @weight_detail.procedence, receipt: @weight_detail.receipt, reception_date: @weight_detail.reception_date, reception_point: @weight_detail.reception_point, reception_status: @weight_detail.reception_status, remission_number: @weight_detail.remission_number, type_of_vehicle: @weight_detail.type_of_vehicle, waste_in_transit: @weight_detail.waste_in_transit } }
    assert_redirected_to weight_detail_url(@weight_detail)
  end

  test "should destroy weight_detail" do
    assert_difference('WeightDetail.count', -1) do
      delete weight_detail_url(@weight_detail)
    end

    assert_redirected_to weight_details_url
  end
end
