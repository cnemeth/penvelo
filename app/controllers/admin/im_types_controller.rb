class Admin::ImTypesController < ApplicationController

  # acl9 access control
  before_filter :load_im_types, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/im_types
  # GET /admin/im_types.xml
  def index
    @im_types = ImType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @im_types }
    end
  end

  # GET /admin/im_types/1
  # GET /admin/im_types/1.xml
  def show
    @im_type = ImType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @im_type }
    end
  end

  # GET /admin/im_types/new
  # GET /admin/im_types/new.xml
  def new
    @im_type = ImType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @im_type }
    end
  end

  # GET /admin/im_types/1/edit
  def edit
    @im_type = ImType.find(params[:id])
  end

  # POST /admin/im_types
  # POST /admin/im_types.xml
  def create
    @im_type = ImType.new(params[:im_type])

    respond_to do |format|
      if @im_type.save
        format.html { redirect_to(admin_im_type_path(@im_type), :notice => 'ImType was successfully created.') }
        format.xml  { render :xml => @im_type, :status => :created, :location => @im_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @im_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/im_types/1
  # PUT /admin/im_types/1.xml
  def update
    @im_type = ImType.find(params[:id])

    respond_to do |format|
      if @im_type.update_attributes(params[:im_type])
        format.html { redirect_to(admin_im_type_path, :notice => 'ImType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @im_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/im_types/1
  # DELETE /admin/im_types/1.xml
  def destroy
    @im_type = ImType.find(params[:id])
    @im_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_im_types_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_im_types
    @im_types = ImType.all
  end
end

