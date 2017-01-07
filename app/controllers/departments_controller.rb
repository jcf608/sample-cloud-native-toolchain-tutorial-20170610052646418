class DepartmentsController < ApplicationController

  def index
    @departments = Department.all.order("created_at DESC")
  end
  
  def show
    @department = Department.find(params[:id])
  end
  
  def create
    @department = Department.create( department_params )
    redirect_to departments_path
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def department_params
    params.require(:department).permit(:name, :location, :user_attributes =>[:last_name, :avatar])
  end
end