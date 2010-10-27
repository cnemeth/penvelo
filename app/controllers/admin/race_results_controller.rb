class Admin::RaceResultsController < ApplicationController

  # acl9 access control
  before_filter :load_race_results, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/race_results
  # GET /admin/race_results.xml
  def index
    @race_results = RaceResult.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @race_results }
    end
  end

  # GET /admin/race_results/1
  # GET /admin/race_results/1.xml
  def show
    @race_result = RaceResult.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race_result }
    end
  end

  # GET /admin/race_results/new
  # GET /admin/race_results/new.xml
  def new
    @race_result = RaceResult.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @race_result }
    end
  end

  # GET /admin/race_results/1/edit
  def edit
    @race_result = RaceResult.find(params[:id])
  end

  # POST /admin/race_results
  # POST /admin/race_results.xml
  def create
    @race_result = RaceResult.new(params[:race_result])

    respond_to do |format|
      if @race_result.save
        format.html { redirect_to(admin_race_result_path(@race_result), :notice => 'RaceResult was successfully created.') }
        format.xml  { render :xml => @race_result, :status => :created, :location => @race_result }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @race_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/race_results/1
  # PUT /admin/race_results/1.xml
  def update
    @race_result = RaceResult.find(params[:id])

    respond_to do |format|
      if @race_result.update_attributes(params[:race_result])
        format.html { redirect_to(admin_race_result_path, :notice => 'RaceResult was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @race_result.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/race_results/1
  # DELETE /admin/race_results/1.xml
  def destroy
    @race_result = RaceResult.find(params[:id])
    @race_result.destroy

    respond_to do |format|
      format.html { redirect_to(admin_race_results_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_race_results
    @race_results = RaceResult.all
  end

end

