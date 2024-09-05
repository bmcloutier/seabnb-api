class PortsController < ApplicationController
  def index
    @ports = Port.all
    render :index
  end
end
