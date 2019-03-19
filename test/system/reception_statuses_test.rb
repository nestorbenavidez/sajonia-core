require "application_system_test_case"

class ReceptionStatusesTest < ApplicationSystemTestCase
  setup do
    @reception_status = reception_statuses(:one)
  end

  test "visiting the index" do
    visit reception_statuses_url
    assert_selector "h1", text: "Reception Statuses"
  end

  test "creating a Reception status" do
    visit reception_statuses_url
    click_on "New Reception Status"

    fill_in "Name", with: @reception_status.name
    click_on "Create Reception status"

    assert_text "Reception status was successfully created"
    click_on "Back"
  end

  test "updating a Reception status" do
    visit reception_statuses_url
    click_on "Edit", match: :first

    fill_in "Name", with: @reception_status.name
    click_on "Update Reception status"

    assert_text "Reception status was successfully updated"
    click_on "Back"
  end

  test "destroying a Reception status" do
    visit reception_statuses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Reception status was successfully destroyed"
  end
end
