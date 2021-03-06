class Admin::ClubsController < ApplicationController

  # acl9 access control
  before_filter :load_clubs, :only => [:index, :edit, :update, :show]
  access_control do
    #allow all, :to => [:index]
    #allow logged_in, :to => [:index, :show]
    allow :site_admin, :executive, :director
  end

  layout 'admin'

  # GET /admin/clubs
  # GET /admin/clubs.xml
  def index
    @clubs = Club.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clubs }
    end
  end

  # GET /admin/clubs/1
  # GET /admin/clubs/1.xml
  def show
    @club = Club.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @club }
    end
  end

  # GET /admin/clubs/new
  # GET /admin/clubs/new.xml
#  def new
#    @club = Club.new

#    respond_to do |format|
#      format.html # new.html.erb
#      format.xml  { render :xml => @club }
#    end
#  end

  # GET /admin/clubs/1/edit
  def edit
    @club = Club.find(params[:id])
  end

  # POST /admin/clubs
  # POST /admin/clubs.xml
  #def create
  #  @club = Club.new(params[:club])

#    respond_to do |format|
#      if @club.save
#        format.html { redirect_to(@club, :notice => 'Club was successfully created.') }
#        format.xml  { render :xml => @club, :status => :created, :location => @club }
#      else
#        format.html { render :action => "new" }
#        format.xml  { render :xml => @club.errors, :status => :unprocessable_entity }
#      end
#    end
#  end

  # PUT /admin/clubs/1
  # PUT /admin/clubs/1.xml
  def update
    @club = Club.find(params[:id])

    respond_to do |format|
      if @club.update_attributes(params[:club])
        format.html { redirect_to(admin_club_url, :notice => 'Club was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @club.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/clubs/1
  # DELETE /admin/clubs/1.xml
#  def destroy
#    @club = Club.find(params[:id])
#    @club.destroy

#    respond_to do |format|
#      format.html { redirect_to(clubs_url) }
#      format.xml  { head :ok }
#    end
#  end

private

  def load_clubs
    @clubs = Club.all
  end

end

