class GeocoderController < ApplicationController
  def findaddress
  @address = Geocoder.address([params[:latitude], params[:longitude]])
  end
end
