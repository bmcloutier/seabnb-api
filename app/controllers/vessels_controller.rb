class VesselsController < ApplicationController
  def index
    @vessels = Vessel.where(port_id: params[:port_id])
    render :index
  end
end
