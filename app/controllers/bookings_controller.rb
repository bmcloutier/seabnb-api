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
    update_map(@booking, params[:port_start_id], params[:port_end_id])
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

  def update_map(book, start_id, end_id)
    start_port = Port.find_by(id: start_id)
    end_port = Port.find_by(id: end_id)

    lat_max = start_port.latitude > end_port.latitude ? start_port.latitude : end_port.latitude
    lat_min = start_port.latitude <= end_port.latitude ? start_port.latitude : end_port.latitude
    lon_max = start_port.longitude > end_port.longitude ? start_port.longitude : end_port.longitude
    lon_min = start_port.longitude <= end_port.longitude ? start_port.longitude : end_port.longitude

    response = HTTP.get("https://api.mapbox.com/styles/v1/mapbox/light-v11/static/geojson(%7B%22type%22%3A%22FeatureCollection%22%2C%22features%22%3A%5B%7B%22type%22%3A%22Feature%22%2C%22properties%22%3A%7B%22stroke%22%3A%22%23888%22%2C%22stroke-width%22%3A%228%22%7D%2C%22geometry%22%3A%7B%22type%22%3A%22LineString%22%2C%22coordinates%22%3A%5B%5B#{start_port.longitude}%2C#{start_port.latitude}%5D%2C%5B#{end_port.longitude}%2C#{end_port.latitude}%5D%5D%7D%7D%2C%7B%22type%22%3A%22Feature%22%2C%22properties%22%3A%7B%22marker-color%22%3A%22%2366CC00%22%7D%2C%22geometry%22%3A%7B%22type%22%3A%22Point%22%2C%22coordinates%22%3A%5B#{start_port.longitude}%2C#{start_port.latitude}%5D%7D%7D%2C%7B%22type%22%3A%22Feature%22%2C%22properties%22%3A%7B%22marker-color%22%3A%22%23CC3300%22%7D%2C%22geometry%22%3A%7B%22type%22%3A%22Point%22%2C%22coordinates%22%3A%5B#{end_port.longitude}%2C#{end_port.latitude}%5D%7D%7D%5D%7D)/[#{lon_min},#{lat_min},#{lon_max},#{lat_max}]/375x250?padding=50&access_token=#{ENV["MAPBOX_API_KEY"]}")

    book.map.attach(io: StringIO.new(response.body), filename: "map.png", content_type: "image/png")
  end
end
