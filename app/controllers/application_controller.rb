class ApplicationController < ActionController::Base
  protect_from_forgery

  def require_admin!
    unless current_user.try :is_admin?
      redirect_to root_path, :alert => "Access Denied."
    end
  end
end
