require 'test_helper'

class PutniksControllerTest < ActionController::TestCase
  setup do
    @putnik = putniks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:putniks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create putnik" do
    assert_difference('Putnik.count') do
      post :create, putnik: { name: @putnik.name, phone: @putnik.phone }
    end

    assert_redirected_to putnik_path(assigns(:putnik))
  end

  test "should show putnik" do
    get :show, id: @putnik
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @putnik
    assert_response :success
  end

  test "should update putnik" do
    patch :update, id: @putnik, putnik: { name: @putnik.name, phone: @putnik.phone }
    assert_redirected_to putnik_path(assigns(:putnik))
  end

  test "should destroy putnik" do
    assert_difference('Putnik.count', -1) do
      delete :destroy, id: @putnik
    end

    assert_redirected_to putniks_path
  end
end
