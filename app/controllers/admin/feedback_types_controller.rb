class Admin::FeedbackTypesController < ApplicationController

  # acl9 access control
  before_filter :load_feedback_types, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/feedback_types
  # GET /admin/feedback_types.xml
  def index
    @feedback_types = FeedbackType.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedback_types }
    end
  end

  # GET /admin/feedback_types/1
  # GET /admin/feedback_types/1.xml
  def show
    @feedback_type = FeedbackType.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feedback_type }
    end
  end

  # GET /admin/feedback_types/new
  # GET /admin/feedback_types/new.xml
  def new
    @feedback_type = FeedbackType.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feedback_type }
    end
  end

  # GET /admin/feedback_types/1/edit
  def edit
    @feedback_type = FeedbackType.find(params[:id])
  end

  # POST /admin/feedback_types
  # POST /admin/feedback_types.xml
  def create
    @feedback_type = FeedbackType.new(params[:feedback_type])

    respond_to do |format|
      if @feedback_type.save
        format.html { redirect_to(admin_feedback_type_path(@feedback_type), :notice => 'FeedbackType was successfully created.') }
        format.xml  { render :xml => @feedback_type, :status => :created, :location => @feedback_type }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feedback_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/feedback_types/1
  # PUT /admin/feedback_types/1.xml
  def update
    @feedback_type = FeedbackType.find(params[:id])

    respond_to do |format|
      if @feedback_type.update_attributes(params[:feedback_type])
        format.html { redirect_to(admin_feedback_type_path, :notice => 'FeedbackType was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feedback_type.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/feedback_types/1
  # DELETE /admin/feedback_types/1.xml
  def destroy
    @feedback_type = FeedbackType.find(params[:id])
    @feedback_type.destroy

    respond_to do |format|
      format.html { redirect_to(admin_feedback_types_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_feedback_types
    @feedback_types = FeedbackType.all
  end

end

