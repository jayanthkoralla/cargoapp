class BookingsController < ApplicationController
    skip_before_action :verify_authenticity_token
    # rescue_from ActionController::Redirecting::UnsafeRedirectError do
    #     redirect_to "root_path"
    # end
    def create
        
        @booking = Booking.create(customer_id:params[:customer_id], driver_id:params[:driver_id], route_id:params[:route_id], date_of_journey:params[:date_of_journey])
        # @routes = Route.all
        # @bookings = current_customer.bookings
        # render "customers/index"
        flash[:notice] =  "Your Booking is successfully"
        redirect_to customers_path
    end
  end
  