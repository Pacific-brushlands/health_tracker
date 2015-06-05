require 'test_helper'

class StepsControllerTest < ActionController::TestCase
  setup do
    @step = steps(:one)
  end

  test "should get index" do
    get :index
    assert_not_nil assigns(:steps)
  end

  test "should get show" do
    get :show, id: @step
    assert_response :success
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @step
    assert_response :success
  end

  test "should get create step" do
    assert_difference('Step.count') do
      post :create, step: { amount: @step.amount, steps_on: @step.steps_on }
    end
    assert_redirected_to step_path(assigns(:step))
  end

  test "should get update" do
    patch :update, id: @step, step: { amount: @step.amount, steps_on: @step.steps_on }

    assert_redirected_to step_path(assigns(:step))
  end

  test "should get destroy" do
    assert_difference('Step.count', -1) do
      delete :destroy, id: @step
    end
    assert_redirected_to steps_path
  end

end
