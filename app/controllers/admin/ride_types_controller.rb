class Admin::RideTypesController < ApplicationController

  # acl9 access control
  before_filter :load_ride_types, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/ride_types
  # GET /admin/ride_types.xml
  def index
    @ride_types = RideType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @ride_types }
    end
  end

  # GET /admin/ride_types/1
  # GET /admin/ride_types/1.xml
  def show
    @ride_type = RideType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @ride_type }
    end
  end

  # GET /admin/ride_types/new
  # GET /admin/ride_types/new.xml
  def new
    @ride_type = RideType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @ride_type }
    end
  end

  # GET /admin/ride_types/1/edit
  def edit
    @ride_type = RideType.find(params[:id])
  end

  # POST /admin/ride_types
  # POST /admin/ride_types.xml
  def create
    @ride_type = RideType.new(params[:ride_type])

    respond_to do |format|
      if @ride_type.save
        format.html { redirect_to(admin_ride_type_path(@ride_type), :notice => 'RideType was successfully created.') }
        format.xml  { render :xml => @ride_type, :status => :created, :location => @ride_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @ride_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/ride_types/1
  # PUT /admin/ride_types/1.xml
  def update
    @ride_type = RideType.find(params[:id])

    respond_to do |format|
      if @ride_type.update_attributes(params[:ride_type])
        format.html { redirect_to(admin_ride_type_path, :notice => 'RideType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @ride_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/ride_types/1
  # DELETE /admin/ride_types/1.xml
  def destroy
    @ride_type = RideType.find(params[:id])
    @ride_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_ride_types_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_ride_types
    @ride_types = RideType.all
  end

end

