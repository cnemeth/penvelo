class Admin::RaceCategoriesController < ApplicationController

  # acl9 access control
  before_filter :load_race_categories, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/race_categories
  # GET /admin/race_categories.xml
  def index
    @race_categories = RaceCategory.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @race_categories }
    end
  end

  # GET /admin/race_categories/1
  # GET /admin/race_categories/1.xml
  def show
    @race_category = RaceCategory.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @race_category }
    end
  end

  # GET /admin/race_categories/new
  # GET /admin/race_categories/new.xml
  def new
    @race_category = RaceCategory.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @race_category }
    end
  end

  # GET /admin/race_categories/1/edit
  def edit
    @race_category = RaceCategory.find(params[:id])
  end

  # POST /admin/race_categories
  # POST /admin/race_categories.xml
  def create
    @race_category = RaceCategory.new(params[:race_category])

    respond_to do |format|
      if @race_category.save
        format.html { redirect_to(admin_race_category_path(@race_category), :notice => 'RaceCategory was successfully created.') }
        format.xml  { render :xml => @race_category, :status => :created, :location => @race_category }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @race_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/race_categories/1
  # PUT /admin/race_categories/1.xml
  def update
    @race_category = RaceCategory.find(params[:id])

    respond_to do |format|
      if @race_category.update_attributes(params[:race_category])
        format.html { redirect_to(admin_race_category_path, :notice => 'RaceCategory was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @race_category.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/race_categories/1
  # DELETE /admin/race_categories/1.xml
  def destroy
    @race_category = RaceCategory.find(params[:id])
    @race_category.destroy

    respond_to do |format|
      format.html { redirect_to(admin_race_categories_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_race_categories
    @race_categories = RaceCategory.all
  end

end

