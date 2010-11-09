module HomeHelper

  def club_meeting
    Content.find(:all, :conditions => "content_type_id = #{ContentType.find(:first, :conditions => ["name = ?", "meeting notice"]).id}", :order => "created_at DESC")
  end

  def special_events
    Content.find(:all, :conditions => "content_type_id = #{ContentType.find(:first, :conditions => ["name = ?","special event"]).id}", :order => "created_at DESC")
  end

  def top_news
    Content.find(:all, :conditions => "content_type_id = #{ContentType.find(:first, :conditions => ["name = ?","news"]).id}", :order => "created_at DESC", :limit => 3)
	end

	def top_a
	  Content.find(:all, :conditions => "content_type_id = #{ContentType.find(:first, :conditions => ["name = ?","announcement"]).id}", :order => "created_at DESC", :limit => 3)
	end

end

