class StudentsController < ApplicationController

  def index
    #/students?name=kirby
    students = if params[:name]
                 Student.by_name(params[:name])
               else
                 Student.all
               end    
    render json: students
  end

  def show
    students = Student.find_by(id: params[:id])
    render json: students
  end




end
