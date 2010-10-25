module Admin::ContentsHelper

  def content_types
    ContentType.all.collect {|content_type|[content_type.name,content_type.id]}
  end

end

