class TasksController < ApplicationController
  def index
    @tasks = access_token.get("/api/tasks").parsed if access_token
  end

  def create
    access_token.post("/api/tasks", params: task_params)
    redirect_to root_url
  end

  private
  def task_params
    {task: {name: params[:name]}}
  end
end
