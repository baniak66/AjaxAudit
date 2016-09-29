class TasksController < ApplicationController

  before_action :authenticate_user!

  def create
    @audits = current_user.audits.all
    @task = Task.new(task_params)
    @task.audit_id = params[:audit_id]
    @task.save
  end

  def destroy
    @audits = current_user.audits.all
    @task = Task.find(params[:id])
    @task.destroy
  end

  def update
    @audits = current_user.audits.all
    @task = Task.find(params[:id])
    if @task.done?
      @task.update_attributes(done: false)
    else
      @task.update_attributes(done: true)
    end
  end

private
  def task_params
    params.require(:task).permit(:descr, :done, :audit_id)
  end

end
