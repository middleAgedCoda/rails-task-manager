class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(params[:task])
    @tasks.save
    redirect_to task_path(@tasks)
  end
end
