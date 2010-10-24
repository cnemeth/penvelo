class Admin::RaceDisciplinesController < ApplicationController

  # acl9 access control
  before_filter :load_race_disciplines, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/race_disciplines
  # GET /admin/race_disciplines.xml
  def index
    @race_disciplines = RaceDiscipline.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @race_disciplines }
    end
  end

  # GET /admin/race_disciplines/1
  # GET /admin/race_disciplines/1.xml
  def show
    @race_discipline = RaceDiscipline.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race_discipline }
    end
  end

  # GET /admin/race_disciplines/new
  # GET /admin/race_disciplines/new.xml
  def new
    @race_discipline = RaceDiscipline.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @race_discipline }
    end
  end

  # GET /admin/race_disciplines/1/edit
  def edit
    @race_discipline = RaceDiscipline.find(params[:id])
  end

  # POST /admin/race_disciplines
  # POST /admin/race_disciplines.xml
  def create
    @race_discipline = RaceDiscipline.new(params[:race_discipline])

    respond_to do |format|
      if @race_discipline.save
        format.html { redirect_to(admin_race_discipline_path(@race_discipline), :notice => 'RaceDiscipline was successfully created.') }
        format.xml  { render :xml => @race_discipline, :status => :created, :location => @race_discipline }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @race_discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/race_disciplines/1
  # PUT /admin/race_disciplines/1.xml
  def update
    @race_discipline = RaceDiscipline.find(params[:id])

    respond_to do |format|
      if @race_discipline.update_attributes(params[:race_discipline])
        format.html { redirect_to(admin_race_discipline_path, :notice => 'RaceDiscipline was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @race_discipline.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/race_disciplines/1
  # DELETE /admin/race_disciplines/1.xml
  def destroy
    @race_discipline = RaceDiscipline.find(params[:id])
    @race_discipline.destroy

    respond_to do |format|
      format.html { redirect_to(admin_race_disciplines_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_race_disciplines
    @race_disciplines = RaceDiscipline.all
  end

end

