class AuditsController < ApplicationController
  before_action :set_audit, only: [:update, :destroy]
  before_action :set_audits, only: [:index, :create, :update, :destroy]
  before_action :set_task, only: [:index, :create, :update, :destroy]

  def welcome
  end

  def index
  end

  def show
    @product = Audit.find(params[:id])
  end

  def new
    @audit = Audit.new
  end

  def create
    @audit = Audit.create(audit_params)
  end

  def edit
    @audit = Audit.find(params[:id])
  end

  def update
    @audit.update_attributes(audit_params)
  end

  def delete
    @audit = Audit.find(params[:audit_id])
  end

  def destroy
    @audit.destroy
  end

private
  def audit_params
    params.require(:audit).permit(:name, :startDate, :endDate)
  end

  def set_audit
    @audit = Audit.find(params[:id])
  end

  def set_audits
    @audits = Audit.all
  end

  def set_task
    @task = Task.new
  end
end
