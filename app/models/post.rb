require 'nokogiri'
require 'open-uri'
require 'uri'
require 'kconv'

# def url_check (url)
#   html = open(url, "r:binary").read
#   doc = Nokogiri::HTML(html.toutf8, nil, 'utf-8')
#   elements = doc.xpath("//h1[@class = 'watch-title-container']/span").text.gsub(/\n/, '')
#   return elements
# end

# def image_get(url)
#   /watch\?v=/ =~ "#{url}"
#   tag= Regexp.last_match.post_match
#   img = "http://img.youtube.com/vi/#{tag}/hqdefault.jpg"
#   return img
# end

class Post < ApplicationRecord
  belongs_to :user
  belongs_to :tube

  def self.url_check(url)
    html = open(url, "r:binary").read
    doc = Nokogiri::HTML(html.toutf8, nil, 'utf-8')
    elements = doc.xpath("//h1[@class = 'watch-title-container']/span").text.gsub(/\n/, '')
    return elements
  end

  def self.tag_get(url)
    /watch\?v=/ =~ "#{url}"
    tag= Regexp.last_match.post_match
    return tag
  end
  
  def self.image_get(url)
    /watch\?v=/ =~ "#{url}"
    tag= Regexp.last_match.post_match
    img = "http://img.youtube.com/vi/#{tag}/hqdefault.jpg"
    return img
  end
end