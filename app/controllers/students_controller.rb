class StudentsController < ApplicationController
  def new
    @student = Student.find(params[:id])
  end

  def create
    # byebug
    @student = Student.new(student_params)
    @student.save
    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @student = Student.new(student_params)
    @student.update(student_params)
    redirect_to student_path(@student)
  end


  private 
  def student_params
    params.require(:student).permit 
  end   
end
