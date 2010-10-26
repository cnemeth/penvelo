class Admin::RacesController < ApplicationController

  # acl9 access control
  before_filter :load_races, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/races
  # GET /admin/races.xml
  def index
    @races = Race.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @races }
    end
  end

  # GET /admin/races/1
  # GET /admin/races/1.xml
  def show
    @race = Race.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race }
    end
  end

  # GET /admin/races/new
  # GET /admin/races/new.xml
  def new
    @race = Race.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @race }
    end
  end

  # GET /admin/races/1/edit
  def edit
    @race = Race.find(params[:id])
  end

  # POST /admin/races
  # POST /admin/races.xml
  def create
    @race = Race.new(params[:race])

    respond_to do |format|
      if @race.save
        format.html { redirect_to(admin_race_path(@race), :notice => 'Race was successfully created.') }
        format.xml  { render :xml => @race, :status => :created, :location => @race }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @race.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/races/1
  # PUT /admin/races/1.xml
  def update
    @race = Race.find(params[:id])

    respond_to do |format|
      if @race.update_attributes(params[:race])
        format.html { redirect_to(admin_race_path, :notice => 'Race was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @race.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/races/1
  # DELETE /admin/races/1.xml
  def destroy
    @race = Race.find(params[:id])
    @race.destroy

    respond_to do |format|
      format.html { redirect_to(admin_races_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_races
    @races = Race.all
  end

end

