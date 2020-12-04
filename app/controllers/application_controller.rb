class ApplicationController < ActionController::Base
    def homepage
        render :'students/homepage'
    end
end
