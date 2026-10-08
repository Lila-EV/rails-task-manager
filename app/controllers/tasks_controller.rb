class TasksController < ApplicationController
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
    redirect_to tasks_path(@task).permit(:title, :details, :completed)
  end
  def edit
    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require (:task).permit
  end
end
