#introduction.rb

require 'open-uri'
require 'json'
require 'digest/md5'
require 'pp'


PUBLIC_KEY         = "77cb3c4d69ca9f5d6a86f2f960dc17e9"
PRIVATE_KEY        = "6769352dbbeb4c3c246c80005e4ccea3f88a6143"
TIMESTAMP          = Time.now.to_i.to_s
URL_HASH           = Digest::MD5.hexdigest("#{TIMESTAMP}#{PRIVATE_KEY}#{PUBLIC_KEY}")
DEFAULT_PARAMS     = "?apikey=#{PUBLIC_KEY}&ts=#{TIMESTAMP}&hash=#{URL_HASH}"
BASE_URL           = "http://gateway.marvel.com/v1/public"


url = BASE_URL + "/characters" + DEFAULT_PARAMS
raw_data = open(url).read
characters_hash = JSON.parse(raw_data)
characters = characters_hash["data"]["results"].map { |character| character["name"] }





pp characters