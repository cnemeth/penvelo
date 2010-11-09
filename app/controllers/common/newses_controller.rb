class Common::NewsesController < ApplicationController

  # GET /common/newses
  # GET /common/newses.xml
  def index
    @newses = Content.find(:all,
                           :conditions => ["content_type_id = ?", "#{ContentType.find(:first, :conditions => ["name = ?", "news"]).id}"],
                           :order => "created_at ASC")

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @newses }
    end
  end

end

