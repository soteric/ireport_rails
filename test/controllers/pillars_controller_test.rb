require 'test_helper'

class PillarsControllerTest < ActionController::TestCase
  setup do
    @pillar = pillars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pillars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pillar" do
    assert_difference('Pillar.count') do
      post :create, pillar: { name: @pillar.name }
    end

    assert_redirected_to pillar_path(assigns(:pillar))
  end

  test "should show pillar" do
    get :show, id: @pillar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pillar
    assert_response :success
  end

  test "should update pillar" do
    patch :update, id: @pillar, pillar: { name: @pillar.name }
    assert_redirected_to pillar_path(assigns(:pillar))
  end

  test "should destroy pillar" do
    assert_difference('Pillar.count', -1) do
      delete :destroy, id: @pillar
    end

    assert_redirected_to pillars_path
  end
end
