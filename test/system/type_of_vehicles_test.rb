require "application_system_test_case"

class TypeOfVehiclesTest < ApplicationSystemTestCase
  setup do
    @type_of_vehicle = type_of_vehicles(:one)
  end

  test "visiting the index" do
    visit type_of_vehicles_url
    assert_selector "h1", text: "Type Of Vehicles"
  end

  test "creating a Type of vehicle" do
    visit type_of_vehicles_url
    click_on "New Type Of Vehicle"

    fill_in "Name", with: @type_of_vehicle.name
    click_on "Create Type of vehicle"

    assert_text "Type of vehicle was successfully created"
    click_on "Back"
  end

  test "updating a Type of vehicle" do
    visit type_of_vehicles_url
    click_on "Edit", match: :first

    fill_in "Name", with: @type_of_vehicle.name
    click_on "Update Type of vehicle"

    assert_text "Type of vehicle was successfully updated"
    click_on "Back"
  end

  test "destroying a Type of vehicle" do
    visit type_of_vehicles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type of vehicle was successfully destroyed"
  end
end
