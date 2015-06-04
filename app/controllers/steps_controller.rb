class StepsController < ApplicationController
  before_action :set_step, only: [:show, :edit, :update, :destroy]

  def index
    @steps = Step.all
  end

  def show
    # @step = Step.find(params[:id])
  end

  def new
    @step = Step.new
  end

  def edit

  end

  def create
    @step = Step.new(step_params)
    respond_to do |format|
      if @step.save
        format.html { redirect_to @step, notice: 'Step entry was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @step.update(step_params)
        format.html { redirect_to @step, notice: 'Step was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @step.destroy
    respond_to do |format|
      format.html { redirect_to steps_url, notice: 'Step was successfully destroyed.' }
    end
  end



  private

    def step_params
      params.require(:step).permit(:amount, :steps_on)
    end

    def set_step
      @step = Step.find(params[:id])
    end

end
