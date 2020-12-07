class SessionsController < ApplicationController
  layout "sessions"
    skip_before_action :authorize
   
  
    def new
      render :layout => 'application'
      @student = Student.new

    end

    def create
     @student = Student.find_by(username: params[:username])
     
     if @student.try(:authenticate, params[:password])
       session[:student_id] = @student.id
       redirect_to @student
     else
       render :new
     end
    end
  
  
    def destroy
     session.delete(:student_id)

     redirect_to root_path
    end
  end