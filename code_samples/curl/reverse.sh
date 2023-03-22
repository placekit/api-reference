curl --location --request POST 'https://api.placekit.co/reverse' \
     --header 'Content-Type: application/json' \
     --header 'x-placekit-api-key: <PLACEKIT_API_KEY>' \
     --data-raw '{
      "countries": ["fr"],
      "language": "fr",
      "types": ["street"],
      "maxResults": 5,
      "coordinates": "48.873662, 2.295063"
    }'