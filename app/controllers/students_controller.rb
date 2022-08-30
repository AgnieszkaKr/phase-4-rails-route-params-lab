class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def show_student
    student = Student.find(params[:id])
    render json: student
  end

  def match_student
    student= Student.all.where(:first_name == params[:key1]).where(:last_name ==params[:key2])
    render json: student

  end

end
