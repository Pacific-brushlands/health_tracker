require 'test_helper'

class ExerciseTasksControllerTest < ActionController::TestCase
  setup do
    @exercise_task = exercise_tasks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_tasks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_task" do
    assert_difference('ExerciseTask.count') do
      post :create, exercise_task: { cals_burned: @exercise_task.cals_burned, exercise_on: @exercise_task.exercise_on, exercise_type_id: @exercise_task.exercise_type_id }
    end

    assert_redirected_to exercise_task_path(assigns(:exercise_task))
  end

  test "should show exercise_task" do
    get :show, id: @exercise_task
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_task
    assert_response :success
  end

  test "should update exercise_task" do
    patch :update, id: @exercise_task, exercise_task: { cals_burned: @exercise_task.cals_burned, exercise_on: @exercise_task.exercise_on, exercise_type_id: @exercise_task.exercise_type_id }
    assert_redirected_to exercise_task_path(assigns(:exercise_task))
  end

  test "should destroy exercise_task" do
    assert_difference('ExerciseTask.count', -1) do
      delete :destroy, id: @exercise_task
    end

    assert_redirected_to exercise_tasks_path
  end
end
