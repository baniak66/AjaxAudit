class TasksController < ApplicationController

  def index
    @audit = Audit.find(params[:audit_id])
    @tasks = @audit.tasks.all
  end

  def new
    @audit = Audit.find(params[:audit_id])
    @task = @audit.tasks.create(task_params)
  end

private
  def task_params
    params.require(:task).permit(:descr, :audit_id)
  end

end
