class Vessel < ApplicationRecord
  belongs_to :port
  has_many :bookings

  def distance(end_port)
    lat1 = port.latitude
    lat2 = end_port.latitude
    lon1 = port.longitude
    lon2 = end_port.longitude
    r = 6371
    p = Math::PI / 180
    a = 0.5 - Math.cos((lat2 - lat1) * p) / 2 + (Math.cos(lat1 * p) * Math.cos(lat2 * p) * (1 - Math.cos((lon2 - lon1) * p))) / 2
    return (2 * r * Math.asin(Math.sqrt(a))).round
  end

  def duration(end_port)
    return distance(end_port) / daily_distance
  end

  def price(end_port)
    return duration(end_port) * daily_price
  end
end
