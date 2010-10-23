class Admin::ContentTypesController < ApplicationController

  # acl9 access control
  before_filter :load_content_types, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/content_types
  # GET /admin/content_types.xml
  def index
    @content_types = ContentType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_types }
    end
  end

  # GET /admin/content_types/1
  # GET /admin/content_types/1.xml
  def show
    @content_type = ContentType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_type }
    end
  end

  # GET /admin/content_types/new
  # GET /admin/content_types/new.xml
  def new
    @content_type = ContentType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_type }
    end
  end

  # GET /admin/content_types/1/edit
  def edit
    @content_type = ContentType.find(params[:id])
  end

  # POST /admin/content_types
  # POST /admin/content_types.xml
  def create
    @content_type = ContentType.new(params[:content_type])

    respond_to do |format|
      if @content_type.save
        format.html { redirect_to(admin_content_type_path(@content_type), :notice => 'ContentType was successfully created.') }
        format.xml  { render :xml => @content_type, :status => :created, :location => @content_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/content_types/1
  # PUT /admin/content_types/1.xml
  def update
    @content_type = ContentType.find(params[:id])

    respond_to do |format|
      if @content_type.update_attributes(params[:content_type])
        format.html { redirect_to(admin_content_type_path, :notice => 'ContentType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/content_types/1
  # DELETE /admin/content_types/1.xml
  def destroy
    @content_type = ContentType.find(params[:id])
    @content_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_content_types_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_content_types
    @content_types = ContentType.all
  end
end

