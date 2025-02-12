class StudentsController < ApplicationController
  def new
    @student = Student.new
  end

  def create
    @student = Student.create(student_params)

    redirect_to student_path(@student)
  end

  def show
    @student = Student.find(params[:id])
  end

  def edit
    @student = Student.find(params[:id])
  end

  def update
    @students = StudentClass.find(params[:id])
    @students.update(students_params)
    
    redirect_to student_path(@student)
  end

  private 

  def school_params
    parms.require(:student).permit
end
