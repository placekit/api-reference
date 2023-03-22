require 'uri'
require 'json'
require 'net/http'

url = URI('https://api.placekit.co/reverse')

https = Net::HTTP.new(url.host, url.port)
https.use_ssl = true

request = Net::HTTP::Post.new(url)
request['Content-Type'] = 'application/json'
request['x-placekit-api-key'] = '<PLACEKIT_API_KEY>'
request.body = {
  countries: ['fr'],
  language: 'fr',
  types: ['street'],
  maxResults: 5,
  coordinates: '48.873662, 2.295063'
}.to_json

response = https.request(request)
pp JSON.parse(response.read_body)
