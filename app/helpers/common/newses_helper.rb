module Common::NewsesHelper

  def news_content
    Content.find(:all, :conditions => "content_type_id = #{ContentType.find(:first, :conditions => "name = 'news'").id}", :order => "created_at DESC")
  end

end

