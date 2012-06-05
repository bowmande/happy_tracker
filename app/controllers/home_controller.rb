class HomeController < ApplicationController
  def index
    @locations = Location.load(params[:q])
    @happiest = Location.happiest(@locations) unless @locations.empty?
  end
  
private
end
