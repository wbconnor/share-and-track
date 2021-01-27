require "application_system_test_case"

class ActtivitiesTest < ApplicationSystemTestCase
  setup do
    @acttivity = acttivities(:one)
  end

  test "visiting the index" do
    visit acttivities_url
    assert_selector "h1", text: "Acttivities"
  end

  test "creating a Acttivity" do
    visit acttivities_url
    click_on "New Acttivity"

    fill_in "Name", with: @acttivity.name
    check "Quantity" if @acttivity.quantity
    check "Time" if @acttivity.time
    check "Weight" if @acttivity.weight
    click_on "Create Acttivity"

    assert_text "Acttivity was successfully created"
    click_on "Back"
  end

  test "updating a Acttivity" do
    visit acttivities_url
    click_on "Edit", match: :first

    fill_in "Name", with: @acttivity.name
    check "Quantity" if @acttivity.quantity
    check "Time" if @acttivity.time
    check "Weight" if @acttivity.weight
    click_on "Update Acttivity"

    assert_text "Acttivity was successfully updated"
    click_on "Back"
  end

  test "destroying a Acttivity" do
    visit acttivities_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Acttivity was successfully destroyed"
  end
end
