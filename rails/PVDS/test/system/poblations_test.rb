require "application_system_test_case"

class PoblationsTest < ApplicationSystemTestCase
  setup do
    @poblation = poblations(:one)
  end

  test "visiting the index" do
    visit poblations_url
    assert_selector "h1", text: "Poblations"
  end

  test "creating a Poblation" do
    visit poblations_url
    click_on "New Poblation"

    fill_in "Nombre", with: @poblation.nombre
    click_on "Create Poblation"

    assert_text "Poblation was successfully created"
    click_on "Back"
  end

  test "updating a Poblation" do
    visit poblations_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @poblation.nombre
    click_on "Update Poblation"

    assert_text "Poblation was successfully updated"
    click_on "Back"
  end

  test "destroying a Poblation" do
    visit poblations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poblation was successfully destroyed"
  end
end
