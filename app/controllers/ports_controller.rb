class PortsController < ApplicationController
  def index
    @ports = Port.all
    render :index
  end

  def show
    @port = Port.find_by(id: params[:id])
    render :show
  end
end
