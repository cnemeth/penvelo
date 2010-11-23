xml.instruct! :xml, :version => "1.0"
xml.rss :version => "2.0" do
  xml.channel do
    xml.title "News"
    xml.description "Latest Penvelo News"
    xml.link common_newses_url(:rss)

    for news in @newses
      xml.item do
        xml.title news.title
        xml.description news.entry
        xml.pubDate news.created_at.to_s(:rfc822)
        xml.link common_newse_url(news, :rss)
        xml.guid common_newse_url(news, :rss)
      end
    end
  end
end

