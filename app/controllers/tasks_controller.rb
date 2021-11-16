class TasksController < ApplicationController
  def tasks
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def show
    @task = Task.find(params[:id])
  end

  def create
    @task = Task.new(params.require(:task).permit(:title, :details, :completed))
    @task.save
    redirect_to '/tasks'
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    # update instance of restaurant (using strong params)
    @task.update(params.require(:task).permit(:title, :details, :completed))
    # redirect to the show page for this instance
    redirect_to task_path(@task.id)
  end

  def delete
    @task = Task.find(params[:id])
    @task.delete
  end
end
