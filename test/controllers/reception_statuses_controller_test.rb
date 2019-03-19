require 'test_helper'

class ReceptionStatusesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reception_status = reception_statuses(:one)
  end

  test "should get index" do
    get reception_statuses_url
    assert_response :success
  end

  test "should get new" do
    get new_reception_status_url
    assert_response :success
  end

  test "should create reception_status" do
    assert_difference('ReceptionStatus.count') do
      post reception_statuses_url, params: { reception_status: { name: @reception_status.name } }
    end

    assert_redirected_to reception_status_url(ReceptionStatus.last)
  end

  test "should show reception_status" do
    get reception_status_url(@reception_status)
    assert_response :success
  end

  test "should get edit" do
    get edit_reception_status_url(@reception_status)
    assert_response :success
  end

  test "should update reception_status" do
    patch reception_status_url(@reception_status), params: { reception_status: { name: @reception_status.name } }
    assert_redirected_to reception_status_url(@reception_status)
  end

  test "should destroy reception_status" do
    assert_difference('ReceptionStatus.count', -1) do
      delete reception_status_url(@reception_status)
    end

    assert_redirected_to reception_statuses_url
  end
end
