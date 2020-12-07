class StudentsController < ApplicationController
    layout "sessions"
    skip_before_action :authorize, only: [:new, :create, :homepage]

    def show
        @student = current_user
        render :layout => "students"

    end    
   
    def new
        @student = Student.new
        render :layout => false
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

    def homepage
  
        render :layout => false
        
    end

    private

    def student_params
        params.require(:student).permit(:name, :username, :grade, :location_id, :password, :password_confirmation)
    end

end
