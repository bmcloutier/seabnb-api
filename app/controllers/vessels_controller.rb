class VesselsController < ApplicationController
  def index
    @vessels = Vessel.where(port_id: params[:port_id])
    @end_port = Port.find_by(id: params[:end_port_id]) || Port.find_by(id: params[:port_id])
    render :index
  end
end
