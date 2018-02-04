require 'test_helper'

class PostacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postac = postacs(:one)
  end

  test "should get index" do
    get postacs_url
    assert_response :success
  end

  test "should get new" do
    get new_postac_url
    assert_response :success
  end

  test "should create postac" do
    assert_difference('Postac.count') do
      post postacs_url, params: { postac: { atk: @postac.atk, def: @postac.def, klasa_id: @postac.klasa_id, lvl: @postac.lvl, magic: @postac.magic, maglvl: @postac.maglvl, name: @postac.name, speed: @postac.speed } }
    end

    assert_redirected_to postac_url(Postac.last)
  end

  test "should show postac" do
    get postac_url(@postac)
    assert_response :success
  end

  test "should get edit" do
    get edit_postac_url(@postac)
    assert_response :success
  end

  test "should update postac" do
    patch postac_url(@postac), params: { postac: { atk: @postac.atk, def: @postac.def, klasa_id: @postac.klasa_id, lvl: @postac.lvl, magic: @postac.magic, maglvl: @postac.maglvl, name: @postac.name, speed: @postac.speed } }
    assert_redirected_to postac_url(@postac)
  end

  test "should destroy postac" do
    assert_difference('Postac.count', -1) do
      delete postac_url(@postac)
    end

    assert_redirected_to postacs_url
  end
end
