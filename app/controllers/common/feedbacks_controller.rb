class Common::FeedbacksController < ApplicationController

  # acl9 access control
  before_filter :load_feedbacks, :only => [:index, :show, :new, :create, :edit, :update]
  access_control do
    allow logged_in
  end

  def index_by_type
    feedback_type_id = FeedbackType.find_by_name(params[:feedback_type]).id
    if feedback_type_id == 'all'
      @feedbacks = Feedback.find(:all, :order => "created_at DESC")
    else
      @feedbacks = Feedback.find(:all, :conditions => ["feedback_type_id = ?",feedback_type_id], :order => "created_at DESC")
    end

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedbacks }
    end
  end

  # GET /common/feedbacks
  # GET /common/feedbacks.xml
  def index
    @feedbacks = Feedback.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @feedbacks }
    end
  end

  # GET /common/feedbacks/1
  # GET /common/feedbacks/1.xml
  def show
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @feedback }
    end
  end

  # GET /common/feedbacks/new
  # GET /common/feedbacks/new.xml
  def new
    @feedback = Feedback.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @feedback }
    end
  end

  # GET /common/feedbacks/1/edit
  def edit
    @feedback = Feedback.find(params[:id])
  end

  # POST /common/feedbacks
  # POST /common/feedbacks.xml
  def create
    @feedback = Feedback.new(params[:feedback])

    respond_to do |format|
      if @feedback.save
        format.html { redirect_to(common_feedbacks_path, :notice => 'Feedback was successfully created.') }
        format.xml  { render :xml => @feedback, :status => :created, :location => @feedback }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /common/feedbacks/1
  # PUT /common/feedbacks/1.xml
  def update
    @feedback = Feedback.find(params[:id])

    respond_to do |format|
      if @feedback.update_attributes(params[:feedback])
        format.html { redirect_to(common_feedbacks_path, :notice => 'Feedback was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @feedback.errors, :status => :unprocessable_entity }
      end
    end
  end



private

  def load_feedbacks
    @feedbacks = Feedback.all
  end


end

