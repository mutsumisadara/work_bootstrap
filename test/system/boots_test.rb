require "application_system_test_case"

class BootsTest < ApplicationSystemTestCase
  setup do
    @boot = boots(:one)
  end

  test "visiting the index" do
    visit boots_url
    assert_selector "h1", text: "Boots"
  end

  test "creating a Boot" do
    visit boots_url
    click_on "New Boot"

    fill_in "Content", with: @boot.content
    fill_in "Name", with: @boot.name
    click_on "Create Boot"

    assert_text "Boot was successfully created"
    click_on "Back"
  end

  test "updating a Boot" do
    visit boots_url
    click_on "Edit", match: :first

    fill_in "Content", with: @boot.content
    fill_in "Name", with: @boot.name
    click_on "Update Boot"

    assert_text "Boot was successfully updated"
    click_on "Back"
  end

  test "destroying a Boot" do
    visit boots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Boot was successfully destroyed"
  end
end
