require 'test_helper'

class PoblationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @poblation = poblations(:one)
  end

  test "should get index" do
    get poblations_url
    assert_response :success
  end

  test "should get new" do
    get new_poblation_url
    assert_response :success
  end

  test "should create poblation" do
    assert_difference('Poblation.count') do
      post poblations_url, params: { poblation: { nombre: @poblation.nombre } }
    end

    assert_redirected_to poblation_url(Poblation.last)
  end

  test "should show poblation" do
    get poblation_url(@poblation)
    assert_response :success
  end

  test "should get edit" do
    get edit_poblation_url(@poblation)
    assert_response :success
  end

  test "should update poblation" do
    patch poblation_url(@poblation), params: { poblation: { nombre: @poblation.nombre } }
    assert_redirected_to poblation_url(@poblation)
  end

  test "should destroy poblation" do
    assert_difference('Poblation.count', -1) do
      delete poblation_url(@poblation)
    end

    assert_redirected_to poblations_url
  end
end
