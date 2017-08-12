require 'test_helper'

class VishnusControllerTest < ActionController::TestCase
  setup do
    @vishnu = vishnus(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vishnus)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vishnu" do
    assert_difference('Vishnu.count') do
      post :create, vishnu: { company: @vishnu.company, designation: @vishnu.designation, name: @vishnu.name }
    end

    assert_redirected_to vishnu_path(assigns(:vishnu))
  end

  test "should show vishnu" do
    get :show, id: @vishnu
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @vishnu
    assert_response :success
  end

  test "should update vishnu" do
    patch :update, id: @vishnu, vishnu: { company: @vishnu.company, designation: @vishnu.designation, name: @vishnu.name }
    assert_redirected_to vishnu_path(assigns(:vishnu))
  end

  test "should destroy vishnu" do
    assert_difference('Vishnu.count', -1) do
      delete :destroy, id: @vishnu
    end

    assert_redirected_to vishnus_path
  end
end
