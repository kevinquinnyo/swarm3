class SwarmRequestsController < ApplicationController
  
  before_filter :authenticate_user!
  before_filter :require_admin!, :except => [:index, :show, :new, :create, :accept_requester_price_now]
  # GET /swarm_requests
  # GET /swarm_requests.xml
  def index
    @swarm_requests = SwarmRequest.open.all
    
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @swarm_requests }
    end
  end

  # GET /swarm_requests/1
  # GET /swarm_requests/1.xml
  def show
    @swarm_request = SwarmRequest.open.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @swarm_request }
    end
  end

  # GET /swarm_requests/new
  # GET /swarm_requests/new.xml
  def new
    @swarm_request = SwarmRequest.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @swarm_request }
    end
  end

  # GET /swarm_requests/1/edit
  def edit
    @swarm_request = SwarmRequest.find(params[:id])
  end

  # POST /swarm_requests
  # POST /swarm_requests.xml
  def create
    @swarm_request = SwarmRequest.new(params[:swarm_request])

    @swarm_request.user = current_user
    respond_to do |format|
      if @swarm_request.save
        format.html { redirect_to(@swarm_request, :notice => 'Swarm request was successfully created.') }
        format.xml  { render :xml => @swarm_request, :status => :created, :location => @swarm_request }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @swarm_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /swarm_requests/1
  # PUT /swarm_requests/1.xml
  def update
    @swarm_request = SwarmRequest.find(params[:id])

    respond_to do |format|
      if @swarm_request.update_attributes(params[:swarm_request])
        format.html { redirect_to(@swarm_request, :notice => 'Swarm request was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @swarm_request.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /swarm_requests/1
  # DELETE /swarm_requests/1.xml
  def destroy
    @swarm_request = SwarmRequest.find(params[:id])
    @swarm_request.destroy

    respond_to do |format|
      format.html { redirect_to(swarm_requests_url) }
      format.xml  { head :ok }
    end
  end

  def accept_requester_price_now
    @swarm_request = SwarmRequest.open.find(params[:id])
    @swarm_request.update_attributes(:auction_closed => true)
    @user = current_user
    @user.increment!(:delivery_count)
    
  
    UserMailer.accept_price_now(@swarm_request, current_user).deliver
    respond_to do |format|
        format.html { redirect_to(root_path, :notice => 'Success. You may now deliver the items.  An email was sent with a summary of the details.') }
        format.xml  { head :ok }
    end
  end
  
  
  
    

end
