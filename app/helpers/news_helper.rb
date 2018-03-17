module NewsHelper
  def youtube_embed(link)
    strip = link.gsub(/https:\/\/youtu.be\//, 'https://youtube.com/embed/')
    stripped = strip.gsub(/https:\/\/www.youtube.com\/watch\?v\=/, 'https://youtube.com/embed/')
  end
end
