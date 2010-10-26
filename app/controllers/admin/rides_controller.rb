class Admin::RidesController < ApplicationController

   # acl9 access control
  before_filter :load_rides, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/rides
  # GET /admin/rides.xml
  def index
    @rides = Ride.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @rides }
    end
  end

  # GET /admin/rides/1
  # GET /admin/rides/1.xml
  def show
    @ride = Ride.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ride }
    end
  end

  # GET /admin/rides/new
  # GET /admin/rides/new.xml
  def new
    @ride = Ride.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ride }
    end
  end

  # GET /admin/rides/1/edit
  def edit
    @ride = Ride.find(params[:id])
  end

  # POST /admin/rides
  # POST /admin/rides.xml
  def create
    @ride = Ride.new(params[:ride])

    respond_to do |format|
      if @ride.save
        format.html { redirect_to(admin_ride_path(@ride), :notice => 'Ride was successfully created.') }
        format.xml  { render :xml => @ride, :status => :created, :location => @ride }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ride.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/rides/1
  # PUT /admin/rides/1.xml
  def update
    @ride = Ride.find(params[:id])

    respond_to do |format|
      if @ride.update_attributes(params[:ride])
        format.html { redirect_to(admin_ride_path, :notice => 'Ride was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ride.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/rides/1
  # DELETE /admin/rides/1.xml
  def destroy
    @ride = Ride.find(params[:id])
    @ride.destroy

    respond_to do |format|
      format.html { redirect_to(admin_rides_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_rides
    @rides = Ride.all
  end

end

