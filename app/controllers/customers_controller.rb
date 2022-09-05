class CustomersController < ApplicationController
  def index
    @routes = Route.all
  end
end
