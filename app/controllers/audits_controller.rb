class AuditsController < ApplicationController

  def index
    @audits = Audit.all
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
  end

  def edit
    @audit = Audit.find(params[:id])
  end

  def update
    @audits = Audit.all
    @audit = Audit.find(params[:id])

    @audit.update_attributes(audit_params)
  end

  def delete
    @audit = Audit.find(params[:audit_id])
  end

  def destroy
    @audits = Audit.all
    @audit = Audit.find(params[:id])
    @audit.destroy
  end

private
  def audit_params
    params.require(:audit).permit(:name, :startDate, :endDate)
  end
end
