require 'test_helper'

class CinemasControllerTest < ActionController::TestCase
  setup do
    @cinema = cinemas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cinemas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cinema" do
    assert_difference('Cinema.count') do
      post :create, cinema: { location: @cinema.location }
    end

    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should show cinema" do
    get :show, id: @cinema
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cinema
    assert_response :success
  end

  test "should update cinema" do
    patch :update, id: @cinema, cinema: { location: @cinema.location }
    assert_redirected_to cinema_path(assigns(:cinema))
  end

  test "should destroy cinema" do
    assert_difference('Cinema.count', -1) do
      delete :destroy, id: @cinema
    end

    assert_redirected_to cinemas_path
  end
end
