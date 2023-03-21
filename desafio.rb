require 'nokogiri'
require 'net/http'
 
https = Net::HTTP.new('example.com', 443)

    https.use_ssl = true
 
response = https.get("/")

doc = Nokogiri::HTML(response.body)
paragrafo = doc.at('p')
puts paragrafo.content