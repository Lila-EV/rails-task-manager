class TaskController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @task = Task.find(params[:id])
  end
  def new
    @task_new = Task.new
  end
  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to task_path(@task)
  end
  def edit
  end
end
