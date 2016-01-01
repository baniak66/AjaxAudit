class TasksController < ApplicationController

  def create
    @audits = Audit.all
    @task = Task.new(task_params)
    @task.audit_id = params[:audit_id]
    @task.save
  end

  def destroy
    @audits = Audit.all
    @task = Task.find(params[:id])
    @task.destroy
  end

private
  def task_params
    params.require(:task).permit(:descr, :audit_id)
  end

end
