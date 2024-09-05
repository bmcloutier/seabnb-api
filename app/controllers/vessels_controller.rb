class VesselsController < ApplicationController
  def index
    @vessels = Vessel.all
    render :index
  end
end
