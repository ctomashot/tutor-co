class ApplicationController < ActionController::Base
    before_action :authorize


    def current_user
        @student = Student.find_by(id: session[:student_id])
    end


    def authorize
        redirect_to root_path unless current_user
    end

   
end
