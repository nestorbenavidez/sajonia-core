require "application_system_test_case"

class QualitiesTest < ApplicationSystemTestCase
  setup do
    @quality = qualities(:one)
  end

  test "visiting the index" do
    visit qualities_url
    assert_selector "h1", text: "Qualities"
  end

  test "creating a Quality" do
    visit qualities_url
    click_on "New Quality"

    fill_in "Name", with: @quality.name
    click_on "Create Quality"

    assert_text "Quality was successfully created"
    click_on "Back"
  end

  test "updating a Quality" do
    visit qualities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @quality.name
    click_on "Update Quality"

    assert_text "Quality was successfully updated"
    click_on "Back"
  end

  test "destroying a Quality" do
    visit qualities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Quality was successfully destroyed"
  end
end
