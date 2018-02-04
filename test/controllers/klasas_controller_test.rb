require 'test_helper'

class KlasasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @klasa = klasas(:one)
  end

  test "should get index" do
    get klasas_url
    assert_response :success
  end

  test "should get new" do
    get new_klasa_url
    assert_response :success
  end

  test "should create klasa" do
    assert_difference('Klasa.count') do
      post klasas_url, params: { klasa: { description: @klasa.description, name: @klasa.name, specialatk: @klasa.specialatk } }
    end

    assert_redirected_to klasa_url(Klasa.last)
  end

  test "should show klasa" do
    get klasa_url(@klasa)
    assert_response :success
  end

  test "should get edit" do
    get edit_klasa_url(@klasa)
    assert_response :success
  end

  test "should update klasa" do
    patch klasa_url(@klasa), params: { klasa: { description: @klasa.description, name: @klasa.name, specialatk: @klasa.specialatk } }
    assert_redirected_to klasa_url(@klasa)
  end

  test "should destroy klasa" do
    assert_difference('Klasa.count', -1) do
      delete klasa_url(@klasa)
    end

    assert_redirected_to klasas_url
  end
end
