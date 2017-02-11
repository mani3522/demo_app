require 'test_helper'

class StaffSubjectsControllerTest < ActionController::TestCase
  setup do
    @staff_subject = staff_subjects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:staff_subjects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create staff_subject" do
    assert_difference('StaffSubject.count') do
      post :create, staff_subject: { staff_id: @staff_subject.staff_id, subject_id: @staff_subject.subject_id }
    end

    assert_redirected_to staff_subject_path(assigns(:staff_subject))
  end

  test "should show staff_subject" do
    get :show, id: @staff_subject
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @staff_subject
    assert_response :success
  end

  test "should update staff_subject" do
    patch :update, id: @staff_subject, staff_subject: { staff_id: @staff_subject.staff_id, subject_id: @staff_subject.subject_id }
    assert_redirected_to staff_subject_path(assigns(:staff_subject))
  end

  test "should destroy staff_subject" do
    assert_difference('StaffSubject.count', -1) do
      delete :destroy, id: @staff_subject
    end

    assert_redirected_to staff_subjects_path
  end
end
