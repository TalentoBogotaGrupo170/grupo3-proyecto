require "application_system_test_case"

class EstudiantesTest < ApplicationSystemTestCase
  setup do
    @estudiante = estudiantes(:one)
  end

  test "visiting the index" do
    visit estudiantes_url
    assert_selector "h1", text: "Estudiantes"
  end

  test "creating a Estudiante" do
    visit estudiantes_url
    click_on "New Estudiante"

    fill_in "Cedula", with: @estudiante.cedula
    fill_in "Edad", with: @estudiante.edad
    fill_in "Nombre", with: @estudiante.nombre
    fill_in "Poblacion", with: @estudiante.poblacion_id
    fill_in "Puntos", with: @estudiante.puntos_id
    click_on "Create Estudiante"

    assert_text "Estudiante was successfully created"
    click_on "Back"
  end

  test "updating a Estudiante" do
    visit estudiantes_url
    click_on "Edit", match: :first

    fill_in "Cedula", with: @estudiante.cedula
    fill_in "Edad", with: @estudiante.edad
    fill_in "Nombre", with: @estudiante.nombre
    fill_in "Poblacion", with: @estudiante.poblacion_id
    fill_in "Puntos", with: @estudiante.puntos_id
    click_on "Update Estudiante"

    assert_text "Estudiante was successfully updated"
    click_on "Back"
  end

  test "destroying a Estudiante" do
    visit estudiantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estudiante was successfully destroyed"
  end
end
