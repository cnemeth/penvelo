class Admin::SponsorDiscountsController < ApplicationController

  # acl9 access control
  before_filter :load_sponsor_discounts, :only => [:index, :show, :new, :create, :edit, :update, :destroy]
  access_control do
    allow :site_admin
  end

  layout 'admin'

  # GET /admin/sponsor_discounts
  # GET /admin/sponsor_discounts.xml
  def index
    @sponsor_discounts = SponsorDiscount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sponsor_discounts }
    end
  end

  # GET /admin/sponsor_discounts/1
  # GET /admin/sponsor_discounts/1.xml
  def show
    @sponsor_discount = SponsorDiscount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sponsor_discount }
    end
  end

  # GET /admin/sponsor_discounts/new
  # GET /admin/sponsor_discounts/new.xml
  def new
    @sponsor_discount = SponsorDiscount.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @sponsor_discount }
    end
  end

  # GET /admin/sponsor_discounts/1/edit
  def edit
    @sponsor_discount = SponsorDiscount.find(params[:id])
  end

  # POST /admin/sponsor_discounts
  # POST /admin/sponsor_discounts.xml
  def create
    @sponsor_discount = SponsorDiscount.new(params[:sponsor_discount])

    respond_to do |format|
      if @sponsor_discount.save
        format.html { redirect_to(admin_sponsor_discount_path(@sponsor_discount), :notice => 'SponsorDiscount was successfully created.') }
        format.xml  { render :xml => @sponsor_discount, :status => :created, :location => @sponsor_discount }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @sponsor_discount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /admin/sponsor_discounts/1
  # PUT /admin/sponsor_discounts/1.xml
  def update
    @sponsor_discount = SponsorDiscount.find(params[:id])

    respond_to do |format|
      if @sponsor_discount.update_attributes(params[:sponsor_discount])
        format.html { redirect_to(admin_sponsor_discount_path, :notice => 'SponsorDiscount was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @sponsor_discount.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/sponsor_discounts/1
  # DELETE /admin/sponsor_discounts/1.xml
  def destroy
    @sponsor_discount = SponsorDiscount.find(params[:id])
    @sponsor_discount.destroy

    respond_to do |format|
      format.html { redirect_to(admin_sponsor_discounts_url) }
      format.xml  { head :ok }
    end
  end

private

  def load_sponsor_discounts
    @sponsor_discounts = SponsorDiscount.all
  end

end

