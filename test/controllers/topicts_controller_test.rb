require 'test_helper'

class TopictsControllerTest < ActionController::TestCase
  setup do
    @topict = topicts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:topicts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create topict" do
    assert_difference('Topict.count') do
      post :create, topict: { course_id: @topict.course_id, itle: @topict.itle, student_id: @topict.student_id }
    end

    assert_redirected_to topict_path(assigns(:topict))
  end

  test "should show topict" do
    get :show, id: @topict
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @topict
    assert_response :success
  end

  test "should update topict" do
    patch :update, id: @topict, topict: { course_id: @topict.course_id, itle: @topict.itle, student_id: @topict.student_id }
    assert_redirected_to topict_path(assigns(:topict))
  end

  test "should destroy topict" do
    assert_difference('Topict.count', -1) do
      delete :destroy, id: @topict
    end

    assert_redirected_to topicts_path
  end
end
