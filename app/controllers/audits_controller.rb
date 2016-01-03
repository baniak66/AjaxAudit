class AuditsController < ApplicationController

  def welcome
  end

  def index
    @audits = Audit.all
    @task = Task.new
  end

  def show
    @product = Audit.find(params[:id])
  end

  def new
    @audit = Audit.new
  end

  def create
    @audits = Audit.all
    @audit = Audit.create(audit_params)
    @task = Task.new
  end

  def edit
    @audit = Audit.find(params[:id])
  end

  def update
    @audits = Audit.all
    @audit = Audit.find(params[:id])
    @task = Task.new

    @audit.update_attributes(audit_params)
  end

  def delete
    @audit = Audit.find(params[:audit_id])
  end

  def destroy
    @task = Task.new
    @audits = Audit.all
    @audit = Audit.find(params[:id])
    @audit.destroy
  end

private
  def audit_params
    params.require(:audit).permit(:name, :startDate, :endDate)
  end
end
