class TasksController < ApplicationController
  def index
    @task = Task.all
  end
  
  def show
    @task = Task.find(params[:id])
  end
  
  def new
  end
  
  def create
    @task = Task.new(params.require(:task).permit(:title, :text))
    @task.save
    redirect_to @task
  end
end
