class DriversController < ApplicationController
    before_action :authenticate_driver!
    
    def index
        @routes = current_driver.routes
        @routes = @routes.as_json

    end

end
  