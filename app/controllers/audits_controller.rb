class AuditsController < ApplicationController
  before_action :set_audit, only: [:update, :destroy]
  before_action :set_audits, only: [:index, :create, :update, :destroy]
  before_action :set_task, only: [:index, :create, :update, :destroy]
  before_action :authenticate_user!, except: [:welcome]

  def welcome
    if user_signed_in?
      redirect_to audits_path
    end
  end

  def index
  end

  def new
    @audit = current_user.audits.new
  end

  def create
    @audit = current_user.audits.create(audit_params)
  end

  def edit
    @audit = current_user.audits.find(params[:id])
  end

  def update
    @audit.update_attributes(audit_params)
  end

  def delete
    @audit = current_user.audits.find(params[:audit_id])
  end

  def destroy
    @audit.destroy
  end

private
  def audit_params
    params.require(:audit).permit(:name, :startDate, :endDate, :user_id)
  end

  def set_audit
    @audit = current_user.audits.find(params[:id])
  end

  def set_audits
    @audits = current_user.audits.all
  end

  def set_task
    @task = Task.new
  end
end
