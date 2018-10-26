require 'test_helper'

class PoblacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poblacion = poblacions(:one)
  end

  test "should get index" do
    get poblacions_url
    assert_response :success
  end

  test "should get new" do
    get new_poblacion_url
    assert_response :success
  end

  test "should create poblacion" do
    assert_difference('Poblacion.count') do
      post poblacions_url, params: { poblacion: { nombre: @poblacion.nombre } }
    end

    assert_redirected_to poblacion_url(Poblacion.last)
  end

  test "should show poblacion" do
    get poblacion_url(@poblacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_poblacion_url(@poblacion)
    assert_response :success
  end

  test "should update poblacion" do
    patch poblacion_url(@poblacion), params: { poblacion: { nombre: @poblacion.nombre } }
    assert_redirected_to poblacion_url(@poblacion)
  end

  test "should destroy poblacion" do
    assert_difference('Poblacion.count', -1) do
      delete poblacion_url(@poblacion)
    end

    assert_redirected_to poblacions_url
  end
end
