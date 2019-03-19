require "application_system_test_case"

class ReceptionPointsTest < ApplicationSystemTestCase
  setup do
    @reception_point = reception_points(:one)
  end

  test "visiting the index" do
    visit reception_points_url
    assert_selector "h1", text: "Reception Points"
  end

  test "creating a Reception point" do
    visit reception_points_url
    click_on "New Reception Point"

    fill_in "Name", with: @reception_point.name
    click_on "Create Reception point"

    assert_text "Reception point was successfully created"
    click_on "Back"
  end

  test "updating a Reception point" do
    visit reception_points_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reception_point.name
    click_on "Update Reception point"

    assert_text "Reception point was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception point" do
    visit reception_points_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception point was successfully destroyed"
  end
end
