require 'test_helper'

class CertificationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @certification = certifications(:one)
  end

  test "should get index" do
    get certifications_url
    assert_response :success
  end

  test "should get new" do
    get new_certification_url
    assert_response :success
  end

  test "should create certification" do
    assert_difference('Certification.count') do
      post certifications_url, params: { certification: { name: @certification.name } }
    end

    assert_redirected_to certification_url(Certification.last)
  end

  test "should show certification" do
    get certification_url(@certification)
    assert_response :success
  end

  test "should get edit" do
    get edit_certification_url(@certification)
    assert_response :success
  end

  test "should update certification" do
    patch certification_url(@certification), params: { certification: { name: @certification.name } }
    assert_redirected_to certification_url(@certification)
  end

  test "should destroy certification" do
    assert_difference('Certification.count', -1) do
      delete certification_url(@certification)
    end

    assert_redirected_to certifications_url
  end
end
