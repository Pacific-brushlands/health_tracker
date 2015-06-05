class ExerciseTasksController < ApplicationController
  before_action :set_exercise_task, only: [:show, :edit, :update, :destroy]

  # GET /exercise_tasks
  # GET /exercise_tasks.json
  def index
    @exercise_tasks = ExerciseTask.all
  end

  # GET /exercise_tasks/1
  # GET /exercise_tasks/1.json
  def show
  end

  # GET /exercise_tasks/new
  def new
    @exercise_task = ExerciseTask.new
  end

  # GET /exercise_tasks/1/edit
  def edit
  end

  # POST /exercise_tasks
  # POST /exercise_tasks.json
  def create
    @exercise_task = ExerciseTask.new(exercise_task_params)
    
    respond_to do |format|
      if @exercise_task.save
        format.html { redirect_to @exercise_task, notice: 'Exercise task was successfully created.' }
        format.json { render :show, status: :created, location: @exercise_task }
      else
        format.html { render :new }
        format.json { render json: @exercise_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_tasks/1
  # PATCH/PUT /exercise_tasks/1.json
  def update
    respond_to do |format|
      if @exercise_task.update(exercise_task_params)
        format.html { redirect_to @exercise_task, notice: 'Exercise task was successfully updated.' }
        format.json { render :show, status: :ok, location: @exercise_task }
      else
        format.html { render :edit }
        format.json { render json: @exercise_task.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_tasks/1
  # DELETE /exercise_tasks/1.json
  def destroy
    @exercise_task.destroy
    respond_to do |format|
      format.html { redirect_to exercise_tasks_url, notice: 'Exercise task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exercise_task
      @exercise_task = ExerciseTask.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_task_params
      params.require(:exercise_task).permit(:exercise_type_id, :cals_burned, :exercise_on)
    end
end
