require "application_system_test_case"

class ClientGroupsTest < ApplicationSystemTestCase
  setup do
    @client_group = client_groups(:one)
  end

  test "visiting the index" do
    visit client_groups_url
    assert_selector "h1", text: "Client Groups"
  end

  test "creating a Client group" do
    visit client_groups_url
    click_on "New Client Group"

    fill_in "Name", with: @client_group.name
    click_on "Create Client group"

    assert_text "Client group was successfully created"
    click_on "Back"
  end

  test "updating a Client group" do
    visit client_groups_url
    click_on "Edit", match: :first

    fill_in "Name", with: @client_group.name
    click_on "Update Client group"

    assert_text "Client group was successfully updated"
    click_on "Back"
  end

  test "destroying a Client group" do
    visit client_groups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Client group was successfully destroyed"
  end
end
