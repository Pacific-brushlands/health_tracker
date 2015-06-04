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

  test "should get create" do
    assert_difference('Step.count') do
      post :create, step: { amount: @step.amount, steps_on: @step.steps_on }
    end

  end

  test "should get update" do
    get :update, id: @step
    assert_response :success
  end

  test "should get destroy" do
    get :destroy, id: @step
    assert_response :success
  end

end
