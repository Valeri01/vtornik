require 'test_helper'

class PutnikCarsControllerTest < ActionController::TestCase
  setup do
    @putnik_car = putnik_cars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:putnik_cars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create putnik_car" do
    assert_difference('PutnikCar.count') do
      post :create, putnik_car: { car_id: @putnik_car.car_id, putnic_id: @putnik_car.putnic_id }
    end

    assert_redirected_to putnik_car_path(assigns(:putnik_car))
  end

  test "should show putnik_car" do
    get :show, id: @putnik_car
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @putnik_car
    assert_response :success
  end

  test "should update putnik_car" do
    patch :update, id: @putnik_car, putnik_car: { car_id: @putnik_car.car_id, putnic_id: @putnik_car.putnic_id }
    assert_redirected_to putnik_car_path(assigns(:putnik_car))
  end

  test "should destroy putnik_car" do
    assert_difference('PutnikCar.count', -1) do
      delete :destroy, id: @putnik_car
    end

    assert_redirected_to putnik_cars_path
  end
end
