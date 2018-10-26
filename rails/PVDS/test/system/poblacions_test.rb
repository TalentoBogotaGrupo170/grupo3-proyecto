require "application_system_test_case"

class PoblacionsTest < ApplicationSystemTestCase
  setup do
    @poblacion = poblacions(:one)
  end

  test "visiting the index" do
    visit poblacions_url
    assert_selector "h1", text: "Poblacions"
  end

  test "creating a Poblacion" do
    visit poblacions_url
    click_on "New Poblacion"

    fill_in "Nombre", with: @poblacion.nombre
    click_on "Create Poblacion"

    assert_text "Poblacion was successfully created"
    click_on "Back"
  end

  test "updating a Poblacion" do
    visit poblacions_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @poblacion.nombre
    click_on "Update Poblacion"

    assert_text "Poblacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Poblacion" do
    visit poblacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Poblacion was successfully destroyed"
  end
end
