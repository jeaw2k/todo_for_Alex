class TasksController < ApplicationController
  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    
  end

  def create
    @task = Task.create(name: params[:name], description: params[:description], priority: params[:priority], user_id: current_user.id)
    redirect_to @task
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    @task.update(name: params[:name], description: params[:description], priority: params[:priority])
    redirect_to @task
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end  
end
