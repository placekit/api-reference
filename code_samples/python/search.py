import http.client
import json

conn = http.client.HTTPSConnection('api.placekit.co')
payload = json.dumps({
  'query': '42 avenue Champs Elysees Paris',
  'countries': ['fr'],
  'language': 'fr',
  'types': ['street'],
  'maxResults': 5,
  'coordinates': '48.873662, 2.295063'
})
headers = {
  'Content-Type': 'application/json',
  'x-placekit-api-key': '<PLACEKIT_API_KEY>'
}
conn.request('POST', '/search', payload, headers)
res = conn.getresponse()
data = res.read()
print(data.decode('utf-8'))