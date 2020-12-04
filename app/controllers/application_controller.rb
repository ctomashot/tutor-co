class ApplicationController < ActionController::Base
  



    def current_user
        if session[:student_id]
            @student = Student.find(session[:student_id])
        end
    end


    def authorize
        redirect_to login_path unless current_user
    end

    def homepage
        render :'students/homepage'
    end
end
