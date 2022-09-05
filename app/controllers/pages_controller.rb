class PagesController < ApplicationController
  def index
    if driver_signed_in?
      # render :template => "drivers/index"
      redirect_to drivers_path
    end
    if customer_signed_in?
      # render :template => "customers/index"
      redirect_to customers_path
    end
  end
end
