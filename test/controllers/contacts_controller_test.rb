require 'test_helper'

class ContactsControllerTest < ActionController::TestCase
  setup do
    @contact = contacts(:one)
  end

  test "should get index" do
    sign_in users(:steve)
    get :index
    assert_response :success
    assert_not_nil assigns(:contacts)
  end

  test "should get new" do
    sign_in users(:steve)
    get :new
    assert_response :success
  end

  test "should create contact" do
    sign_in users(:steve)
    assert_difference('Contact.count') do
      post :create, contact: { email: @contact.email }
    end

    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should show contact" do
    sign_in users(:steve)
    get :show, id: @contact
    assert_response :success
  end

  test "should get edit" do
    sign_in users(:steve)
    get :edit, id: @contact
    assert_response :success
  end

  test "should update contact" do
    sign_in users(:steve)
    patch :update, id: @contact, contact: { email: @contact.email }
    assert_redirected_to contact_path(assigns(:contact))
  end

  test "should destroy contact" do
    sign_in users(:steve)
    assert_difference('Contact.count', -1) do
      delete :destroy, id: @contact
    end

    assert_redirected_to contacts_path
  end
end
