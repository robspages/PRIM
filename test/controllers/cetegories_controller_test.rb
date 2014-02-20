require 'test_helper'

class CetegoriesControllerTest < ActionController::TestCase
  setup do
    @cetegory = cetegories(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cetegories)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cetegory" do
    assert_difference('Cetegory.count') do
      post :create, cetegory: { catID: @cetegory.catID, isRoot: @cetegory.isRoot, name: @cetegory.name, parentCatID: @cetegory.parentCatID }
    end

    assert_redirected_to cetegory_path(assigns(:cetegory))
  end

  test "should show cetegory" do
    get :show, id: @cetegory
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cetegory
    assert_response :success
  end

  test "should update cetegory" do
    patch :update, id: @cetegory, cetegory: { catID: @cetegory.catID, isRoot: @cetegory.isRoot, name: @cetegory.name, parentCatID: @cetegory.parentCatID }
    assert_redirected_to cetegory_path(assigns(:cetegory))
  end

  test "should destroy cetegory" do
    assert_difference('Cetegory.count', -1) do
      delete :destroy, id: @cetegory
    end

    assert_redirected_to cetegories_path
  end
end
