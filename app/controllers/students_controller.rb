class StudentsController < ApplicationController

    before_action :find_student, only: [:show, :edit, :update]

    def index
        # byebug
        @students = Student.all
    end

    def show
    end

    def new
        @student = Student.new
    end

    def create
        @student = Student.create(student_params)
        redirect_to @student
    end 

    def edit
    end

    def update
        @student.update(student_params)
        redirect_to students_path(@student)
    end

    private

    def student_params
        student_params = params.require(:student).permit(:first_name, :last_name)
    end
    
    def find_student
        @student = Student.find(params[:id])
    end
end