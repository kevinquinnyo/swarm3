class PagesController < ApplicationController
  
  
  def home
    @swarm_requests = SwarmRequest.open.all

    respond_to do |format|
    format.html # index.html.erb
    format.xml  { render :xml => @swarm_requests }
    end
  end

  def contact
  end

  def about
  end

  

end
