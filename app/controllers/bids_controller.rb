class BidsController < ApplicationController
  
  before_filter :authenticate_user!
  
  # Bids are a nested resource of swarm_requests, so they require a 
  # swarm_request.
  before_filter :set_swarm_request
  
  # GET /swarm_requests/1/bids
  # GET /swarm_requests/1/bids.xml
  def index
    @bids = @swarm_request.bids.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @bids }
    end
  end

  # GET /swarm_requests/1/bids/1
  # GET /swarm_requests/1/bids/1.xml
  def show
    @bid = @swarm_request.bids.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @bid }
    end
  end

  # GET /swarm_requests/1/bids/new
  # GET /swarm_requests/1/bids/new.xml
  def new
    @bid = @swarm_request.bids.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @bid }
    end
  end

  # GET /swarm_requests/1/bids/1/edit
  def edit
    @bid = @swarm_request.bids.find(params[:id])
  end

  # POST /swarm_requests/1/bids
  # POST /swarm_requests/1/bids.xml
  def create
    @bid = @swarm_request.bids.new(params[:bid])
    @bid.user = current_user

    respond_to do |format|
      if @bid.save
        format.html { redirect_to(swarm_request_bid_url(:id => @bid.to_param, :swarm_request_id => @swarm_request.to_param), :notice => 'Bid was successfully created.') }
        format.xml  { render :xml => @bid, :status => :created, :location => @bid }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @bid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /swarm_requests/1/bids/1
  # PUT /swarm_requests/1/bids/1.xml
  def update
    @bid = @swarm_request.bids.find(params[:id])

    respond_to do |format|
      if @bid.update_attributes(params[:bid])
        format.html { redirect_to(swarm_request_bid_url(:id => @bid.to_param, :swarm_request_id => @swarm_request.to_param), :notice => 'Bid was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @bid.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /swarm_requests/1/bids/1
  # DELETE /swarm_requests/1/bids/1.xml
  def destroy
    @bid = @swarm_request.bids.find(params[:id])
    @bid.destroy

    respond_to do |format|
      format.html { redirect_to(swarm_request_bids_url(:swarm_request_id => @swarm_request.to_param)) }
      format.xml  { head :ok }
    end
  end
  
  private
  
  def set_swarm_request
    @swarm_request = SwarmRequest.find(params[:swarm_request_id])
  end
  
end
