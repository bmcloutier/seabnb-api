class BookingsController < ApplicationController
  before_action :authenticate_user

  def index
    @bookings = current_user.bookings
    render :index
  end
end
