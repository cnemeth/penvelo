class Common::SponsorDiscountsController < ApplicationController

  # acl9 access control
  before_filter :load_sponsor_discounts, :only => [:index, :show]
  access_control do
    allow logged_in
  end

  # GET /common/sponsor_discounts
  # GET /common/sponsor_discounts.xml
  def index
    @sponsor_discounts = SponsorDiscount.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @sponsor_discounts }
    end
  end

  # GET /common/sponsor_discounts/1
  # GET /common/sponsor_discounts/1.xml
  def show
    @sponsor_discount = SponsorDiscount.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @sponsor_discount }
    end
  end

private

  def load_sponsor_discounts
    @sponsor_discounts = SponsorDiscount.all
  end

end

