require "application_system_test_case"

class LotsTest < ApplicationSystemTestCase
  setup do
    @lot = lots(:one)
  end

  test "visiting the index" do
    visit lots_url
    assert_selector "h1", text: "Lots"
  end

  test "creating a Lot" do
    visit lots_url
    click_on "New Lot"

    fill_in "Certification", with: @lot.certification
    fill_in "Damage", with: @lot.damage
    fill_in "Imperfection", with: @lot.imperfection
    fill_in "Name", with: @lot.name
    fill_in "Quality", with: @lot.quality
    fill_in "Variety", with: @lot.variety
    click_on "Create Lot"

    assert_text "Lot was successfully created"
    click_on "Back"
  end

  test "updating a Lot" do
    visit lots_url
    click_on "Edit", match: :first

    fill_in "Certification", with: @lot.certification
    fill_in "Damage", with: @lot.damage
    fill_in "Imperfection", with: @lot.imperfection
    fill_in "Name", with: @lot.name
    fill_in "Quality", with: @lot.quality
    fill_in "Variety", with: @lot.variety
    click_on "Update Lot"

    assert_text "Lot was successfully updated"
    click_on "Back"
  end

  test "destroying a Lot" do
    visit lots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Lot was successfully destroyed"
  end
end
