class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.order("grades DESC")
    render json: students
  end

  def students
    student = Student.find(params[:id])
    render json: student
  end

end
