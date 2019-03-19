require "application_system_test_case"

class PledgeesTest < ApplicationSystemTestCase
  setup do
    @pledgee = pledgees(:one)
  end

  test "visiting the index" do
    visit pledgees_url
    assert_selector "h1", text: "Pledgees"
  end

  test "creating a Pledgee" do
    visit pledgees_url
    click_on "New Pledgee"

    fill_in "Name", with: @pledgee.name
    click_on "Create Pledgee"

    assert_text "Pledgee was successfully created"
    click_on "Back"
  end

  test "updating a Pledgee" do
    visit pledgees_url
    click_on "Edit", match: :first

    fill_in "Name", with: @pledgee.name
    click_on "Update Pledgee"

    assert_text "Pledgee was successfully updated"
    click_on "Back"
  end

  test "destroying a Pledgee" do
    visit pledgees_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pledgee was successfully destroyed"
  end
end
