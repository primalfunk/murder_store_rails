class DepartmentsController < ApplicationController
  before_action :set_department, only: [:show, :edit, :update, :destroy]
  
  def index
    @departments = Department.all
  end

  def show
  end

  def new
    @department = Department.new
    render :form
  end

  def edit
    render :form
  end

  def update
    if @department.update(department_params)
      redirect_to @department
    else
      render :form
    end
  end

  def create
    @department = Department.new(department_params)
    if @department.save
      redirect_to departments_path
    else
      render :form
    end
  end

  def destroy
    @department.destroy
    redirect_to departments_path
  end

  private

    def department_params
      params.require(:department).permit(:name)
    end

    def set_department
      @department = Department.find(params[:id])
    end
end
