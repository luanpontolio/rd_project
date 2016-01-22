require 'test_helper'

class ContactTypesControllerTest < ActionController::TestCase
  setup do
    @contact_type = contact_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:contact_types)
  end

  test "should get new" do
    sign_in users(:steve)
    get :new
    assert_response :success
  end

  test "should create contact_type" do
    sign_in users(:steve)
    assert_difference('ContactType.count') do
      post :create, contact_type: { name: @contact_type.name }
    end

    assert_redirected_to contact_type_path(assigns(:contact_type))
  end

  test "should show contact_type" do
    get :show, id: @contact_type
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:steve)
    get :edit, id: @contact_type
    assert_response :success
  end

  test "should update contact_type" do
    sign_in users(:steve)
    patch :update, id: @contact_type, contact_type: { name: @contact_type.name }
    assert_redirected_to contact_type_path(assigns(:contact_type))
  end

  test "should destroy contact_type" do
    sign_in users(:steve)
    assert_difference('ContactType.count', -1) do
      delete :destroy, id: @contact_type
    end

    assert_redirected_to contact_types_path
  end
end
