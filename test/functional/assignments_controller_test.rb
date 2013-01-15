require 'test_helper'

class AssignmentsControllerTest < ActionController::TestCase
  setup do
    @assignment = assignments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:assignments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create assignment" do
    assert_difference('Assignment.count') do
      post :create, assignment: { category_id: @assignment.category_id, circle_id: @assignment.circle_id, discription: @assignment.discription, invalidate: @assignment.invalidate, timelimit: @assignment.timelimit, title: @assignment.title, typies: @assignment.typies, user_id: @assignment.user_id, validate: @assignment.validate }
    end

    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should show assignment" do
    get :show, id: @assignment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @assignment
    assert_response :success
  end

  test "should update assignment" do
    put :update, id: @assignment, assignment: { category_id: @assignment.category_id, circle_id: @assignment.circle_id, discription: @assignment.discription, invalidate: @assignment.invalidate, timelimit: @assignment.timelimit, title: @assignment.title, typies: @assignment.typies, user_id: @assignment.user_id, validate: @assignment.validate }
    assert_redirected_to assignment_path(assigns(:assignment))
  end

  test "should destroy assignment" do
    assert_difference('Assignment.count', -1) do
      delete :destroy, id: @assignment
    end

    assert_redirected_to assignments_path
  end
end
