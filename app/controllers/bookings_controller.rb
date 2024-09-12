class BookingsController < ApplicationController
  before_action :authenticate_user

  def index
    @bookings = current_user.bookings.order(:created_at)
    render :index
  end

  def show
    @booking = Booking.find_by(id: params[:id])
    render :show
  end

  def create
    @booking = Booking.create(
      user_id: current_user.id,
      vessel_id: params[:vessel_id],
      port_start_id: params[:port_start_id],
      port_end_id: params[:port_end_id],
      start_date: params[:start_date],
      end_date: params[:end_date],
    )
    render :show
  end

  def update
    @booking = Booking.find_by(id: params[:id])
    @booking.update(
      vessel_id: params[:vessel_id] || @booking.vessel_id,
      port_start_id: params[:port_start_id] || @booking.port_start_id,
      port_end_id: params[:port_end_id] || @booking.port_end_id,
      start_date: params[:start_date] || @booking.start_date,
      end_date: params[:end_date] || @booking.end_date,
    )
    render :show
  end

  def destroy
    @booking = Booking.find_by(id: params[:id])
    @booking.destroy
    render json: { message: "Booking deleted successfully" }
  end
end
