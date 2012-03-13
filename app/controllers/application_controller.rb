class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all
  geocode_ip_address
  
  before_filter :geokit

  def geokit 
    store_ip_location
##### This is a hack to circumvent an outdated implementation of geokit --- getting uglier...
    if session[:geo_location]; then
    @current_location = "#{session[:geo_location].lat},#{session[:geo_location].lng}"  # @current_location is a GeoLoc instance. 
    else
    @current_location = "33.7488, -84.3880"
  end

    
  end
  def store_location
    session[:return_to] = request.request_uri
  end
  


  def require_admin!
    unless current_user.try :is_admin?
      redirect_to root_path, :alert => "Access Denied."
    end
  end
end


