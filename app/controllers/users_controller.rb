class UsersController < ApplicationController

  def index
    @users = User.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  def show
    @user = User.find(params[:id])
    
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  def rate
    @user = User.find(params[:id])
    @user.rate(params[:stars], current_user, params[:dimension])
    render :update do |page|
      page.replace_html @user.wrapper_dom_id(params), ratings_for(@user, params.merge(:wrap => false))
      page.visual_effect :highlight, @user.wrapper_dom_id(params)
    end
  end

end
