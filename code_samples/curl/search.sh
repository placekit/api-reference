curl --location --request POST 'https://api.placekit.co/search' \
     --header 'Content-Type: application/json' \
     --header 'x-placekit-api-key: <PLACEKIT_API_KEY>' \
     --data-raw '{
      "query": "42 avenue Champs Elysees Paris",
      "countries": ["fr"],
      "language": "fr",
      "types": ["street"],
      "maxResults": 5,
      "coordinates": "48.873662, 2.295063"
    }'