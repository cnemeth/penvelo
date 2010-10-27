class Admin::FeedbacksController < ApplicationController

  # acl9 access control
  before_filter :load_feedbacks, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow logged_in
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/feedbacks
  # GET /admin/feedbacks.xml
  def index
    @feedbacks = Feedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedbacks }
    end
  end

  # GET /admin/feedbacks/1
  # GET /admin/feedbacks/1.xml
  def show
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feedback }
    end
  end

  # GET /admin/feedbacks/new
  # GET /admin/feedbacks/new.xml
  def new
    @feedback = Feedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feedback }
    end
  end

  # GET /admin/feedbacks/1/edit
  def edit
    @feedback = Feedback.find(params[:id])
  end

  # POST /admin/feedbacks
  # POST /admin/feedbacks.xml
  def create
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to(admin_feedback_path(@feedback), :notice => 'Feedback was successfully created.') }
        format.xml  { render :xml => @feedback, :status => :created, :location => @feedback }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/feedbacks/1
  # PUT /admin/feedbacks/1.xml
  def update
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      if @feedback.update_attributes(params[:feedback])
        format.html { redirect_to(admin_feedback_path, :notice => 'Feedback was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/feedbacks/1
  # DELETE /admin/feedbacks/1.xml
  def destroy
    @feedback = Feedback.find(params[:id])
    @feedback.destroy

    respond_to do |format|
      format.html { redirect_to(admin_feedbacks_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_feedbacks
    @feedbacks = Feedback.all
  end

end

