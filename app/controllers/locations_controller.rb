class LocationsController < ApplicationController
     layout "sessions"

    def index
        @locations = Location.all
        @instructors = Instructor.all
    end
end
