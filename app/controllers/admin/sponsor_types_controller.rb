class Admin::SponsorTypesController < ApplicationController

  # acl9 access control
  before_filter :load_sponsor_types, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/sponsor_types
  # GET /admin/sponsor_types.xml
  def index
    @sponsor_types = SponsorType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sponsor_types }
    end
  end

  # GET /admin/sponsor_types/1
  # GET /admin/sponsor_types/1.xml
  def show
    @sponsor_type = SponsorType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sponsor_type }
    end
  end

  # GET /admin/sponsor_types/new
  # GET /admin/sponsor_types/new.xml
  def new
    @sponsor_type = SponsorType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sponsor_type }
    end
  end

  # GET /admin/sponsor_types/1/edit
  def edit
    @sponsor_type = SponsorType.find(params[:id])
  end

  # POST /admin/sponsor_types
  # POST /admin/sponsor_types.xml
  def create
    @sponsor_type = SponsorType.new(params[:sponsor_type])

    respond_to do |format|
      if @sponsor_type.save
        format.html { redirect_to(admin_sponsor_type_path(@sponsor_type), :notice => 'SponsorType was successfully created.') }
        format.xml  { render :xml => @sponsor_type, :status => :created, :location => @sponsor_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sponsor_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/sponsor_types/1
  # PUT /admin/sponsor_types/1.xml
  def update
    @sponsor_type = SponsorType.find(params[:id])

    respond_to do |format|
      if @sponsor_type.update_attributes(params[:sponsor_type])
        format.html { redirect_to(admin_sponsor_type_path, :notice => 'SponsorType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sponsor_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sponsor_types/1
  # DELETE /admin/sponsor_types/1.xml
  def destroy
    @sponsor_type = SponsorType.find(params[:id])
    @sponsor_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_sponsor_types_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_sponsor_types
    @sponsor_types = SponsorType.all
  end
end

