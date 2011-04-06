class ApplicationController < ActionController::Base
  protect_from_forgery

  helper :all
  geocode_ip_address
  
  before_filter :geokit

  def geokit 
    store_ip_location
    @current_location = session[:geo_location]  # @current_location is a GeoLoc instance. 
    
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
