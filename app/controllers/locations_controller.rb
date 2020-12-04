class LocationsController < ApplicationController
     layout "sessions"

    def index
        @locations = Location.all
    end
end
