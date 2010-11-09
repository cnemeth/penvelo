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

  # GET /common/newses/1
  # GET /common/newses/1.xml
  def show
    @news = news.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @news }
    end
  end

end

