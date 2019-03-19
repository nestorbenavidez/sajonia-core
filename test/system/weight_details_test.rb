require "application_system_test_case"

class WeightDetailsTest < ApplicationSystemTestCase
  setup do
    @weight_detail = weight_details(:one)
  end

  test "visiting the index" do
    visit weight_details_url
    assert_selector "h1", text: "Weight Details"
  end

  test "creating a Weight detail" do
    visit weight_details_url
    click_on "New Weight Detail"

    fill_in "Client", with: @weight_detail.client
    fill_in "Driver", with: @weight_detail.driver
    fill_in "Harvest", with: @weight_detail.harvest
    fill_in "Plate", with: @weight_detail.plate
    fill_in "Pledgee", with: @weight_detail.pledgee
    fill_in "Procedence", with: @weight_detail.procedence
    fill_in "Receipt", with: @weight_detail.receipt
    fill_in "Reception date", with: @weight_detail.reception_date
    fill_in "Reception point", with: @weight_detail.reception_point
    fill_in "Reception status", with: @weight_detail.reception_status
    fill_in "Remission number", with: @weight_detail.remission_number
    fill_in "Type of vehicle", with: @weight_detail.type_of_vehicle
    fill_in "Waste in transit", with: @weight_detail.waste_in_transit
    click_on "Create Weight detail"

    assert_text "Weight detail was successfully created"
    click_on "Back"
  end

  test "updating a Weight detail" do
    visit weight_details_url
    click_on "Edit", match: :first

    fill_in "Client", with: @weight_detail.client
    fill_in "Driver", with: @weight_detail.driver
    fill_in "Harvest", with: @weight_detail.harvest
    fill_in "Plate", with: @weight_detail.plate
    fill_in "Pledgee", with: @weight_detail.pledgee
    fill_in "Procedence", with: @weight_detail.procedence
    fill_in "Receipt", with: @weight_detail.receipt
    fill_in "Reception date", with: @weight_detail.reception_date
    fill_in "Reception point", with: @weight_detail.reception_point
    fill_in "Reception status", with: @weight_detail.reception_status
    fill_in "Remission number", with: @weight_detail.remission_number
    fill_in "Type of vehicle", with: @weight_detail.type_of_vehicle
    fill_in "Waste in transit", with: @weight_detail.waste_in_transit
    click_on "Update Weight detail"

    assert_text "Weight detail was successfully updated"
    click_on "Back"
  end

  test "destroying a Weight detail" do
    visit weight_details_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Weight detail was successfully destroyed"
  end
end
