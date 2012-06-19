class RequestRatingsController < ApplicationController
before_filter :set_swarm_request
before_filter :set_bid
before_filter :set_user
before_filter :authorize_as_bidder

  def new
    @request_rating = @swarm_request.build_request_rating

    respond_to do |format|
      format.html { render :template => "request_rating/new" } # request_rating/new.html.erb  (rails bug in has_one path pluralization, force singular request_rating)
      format.xml  { render :xml => @request_rating }
    end
  end

  def create
    @request_rating = @swarm_request.build_request_rating(params[:request_rating])
    respond_to do |format|
      if @request_rating.save
        format.html { redirect_to(swarm_request_request_rating_url(:id => @request_rating.to_param, :swarm_request_id => @swarm_request.to_param), :notice => "Rating successful.") }
        format.xml { render :xml => @request_rating, :status => :created, :location => @request_rating }
      else
        format.html { render :action => "new" }
        format.xml { render :xml => @request_rating.errors, :status => :unproccessable_entity }
      end
    end
  end

  def update
    @request_rating = RequestRating.find(params[:id])
    @request_rating.update_attributes(params[:request_rating])
  end

  def show
    @request_rating = @swarm_request.request_rating

    respond_to do |format|
      format.html { render :template => "request_rating/show" } # request_rating/show.html.erb  (rails bug in has_one path pluralization, force singular request_rating) 
      format.xml { render xml => @request_rating }
    end
  end

  private
    def set_swarm_request
      @swarm_request = SwarmRequest.find(params[:swarm_request_id])
    end
  
    def set_bid
      @bid = @swarm_request.bid.find(params[:swarm_request_id])
    end
    
    def set_user
      @user = current_user
    end

    def authorize_as_bidder
      unless @user.id == @bid.user_id
        redirect_to root_path, :alert => "Access Denied."
      end
    end
    
end

