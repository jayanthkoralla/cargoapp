class CustomersController < ApplicationController
  def index
    @routes = Route.all
    @bookings = current_customer.bookings
  end
end
