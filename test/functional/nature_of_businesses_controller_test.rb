require 'test_helper'

class NatureOfBusinessesControllerTest < ActionController::TestCase
  setup do
    @nature_of_business = nature_of_businesses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:nature_of_businesses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create nature_of_business" do
    assert_difference('NatureOfBusiness.count') do
      post :create, nature_of_business: { name: @nature_of_business.name }
    end

    assert_redirected_to nature_of_business_path(assigns(:nature_of_business))
  end

  test "should show nature_of_business" do
    get :show, id: @nature_of_business
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @nature_of_business
    assert_response :success
  end

  test "should update nature_of_business" do
    put :update, id: @nature_of_business, nature_of_business: { name: @nature_of_business.name }
    assert_redirected_to nature_of_business_path(assigns(:nature_of_business))
  end

  test "should destroy nature_of_business" do
    assert_difference('NatureOfBusiness.count', -1) do
      delete :destroy, id: @nature_of_business
    end

    assert_redirected_to nature_of_businesses_path
  end
end
