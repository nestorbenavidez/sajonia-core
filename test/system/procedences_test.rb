require "application_system_test_case"

class ProcedencesTest < ApplicationSystemTestCase
  setup do
    @procedence = procedences(:one)
  end

  test "visiting the index" do
    visit procedences_url
    assert_selector "h1", text: "Procedences"
  end

  test "creating a Procedence" do
    visit procedences_url
    click_on "New Procedence"

    fill_in "Client", with: @procedence.client
    fill_in "Name", with: @procedence.name
    click_on "Create Procedence"

    assert_text "Procedence was successfully created"
    click_on "Back"
  end

  test "updating a Procedence" do
    visit procedences_url
    click_on "Edit", match: :first

    fill_in "Client", with: @procedence.client
    fill_in "Name", with: @procedence.name
    click_on "Update Procedence"

    assert_text "Procedence was successfully updated"
    click_on "Back"
  end

  test "destroying a Procedence" do
    visit procedences_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Procedence was successfully destroyed"
  end
end
