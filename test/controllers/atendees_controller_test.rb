require 'test_helper'

class AtendeesControllerTest < ActionController::TestCase
  setup do
    @atendee = atendees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:atendees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create atendee" do
    assert_difference('Atendee.count') do
      post :create, atendee: { attendance: @atendee.attendance, comment: @atendee.comment, name: @atendee.name }
    end

    assert_redirected_to atendee_path(assigns(:atendee))
  end

  test "should show atendee" do
    get :show, id: @atendee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @atendee
    assert_response :success
  end

  test "should update atendee" do
    patch :update, id: @atendee, atendee: { attendance: @atendee.attendance, comment: @atendee.comment, name: @atendee.name }
    assert_redirected_to atendee_path(assigns(:atendee))
  end

  test "should destroy atendee" do
    assert_difference('Atendee.count', -1) do
      delete :destroy, id: @atendee
    end

    assert_redirected_to atendees_path
  end
end
