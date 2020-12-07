class InstructorsController < ApplicationController
     layout "sessions"
    
    

    def index
        @instructors= Instructor.all
    end

    def subjects
        @instructors = Instructor.all
    end

    def show
        @instructor = Instructor.find(params[:id])
    end


    private
    def instructor_params
        params.require(:instructor).permit(:name, :bio, :experience, :subject, :location_id)
    end
end
