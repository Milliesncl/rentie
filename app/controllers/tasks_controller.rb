class TasksController < ApplicationController
  def show
    @task = Task.find(params[:id]
  end

  def index
    @tasks = Task.all
  end

  def create
    @task = Task.new(task_params)
  end

  private

  def task_params

  end
end
