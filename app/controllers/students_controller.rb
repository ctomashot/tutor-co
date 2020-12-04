class StudentsController < ApplicationController
    before_action :authorized, except: [:new, :create]

    def show
        @student = Student.find(params[:id])
    end    
   
    def new
        @student = Student.new
    end

    def create
        @student = Student.new(student_params)
        if @student.save
            session[:student_id] = @student.id
            redirect_to student_path(@student)
        else
            render :new
        end
    end

    def edit
        @student = Student.find(params[:id])
    end

    def update
        @student = Student.find(params[:id])
        if @student.update(student_params)
            redirect_to student_path(@student)
        else
            render :edit
        end
    end


    private

    def student_params
        params.require(:student).permit(:name, :username, :grade, :location_id, :password, :password_confirmation)
    end

   
    def authorized
        redirect_to login_path unless session[:student_id]
    end
end
