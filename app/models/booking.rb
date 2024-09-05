class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :vessel
  belongs_to :start, :class_name => "Port", :foreign_key => "port_start_id"
  belongs_to :end, :class_name => "Port", :foreign_key => "port_end_id"
end
