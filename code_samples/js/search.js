var myHeaders = new Headers();
myHeaders.append('Content-Type', 'application/json');
myHeaders.append('x-placekit-api-key', '<PLACEKIT_API_KEY>');

var raw = JSON.stringify({
  query: '42 avenue Champs Elysees Paris',
  countries: ['fr'],
  language: 'fr',
  types: ['street'],
  maxResults: 5,
  coordinates: '48.873662, 2.295063'
});

var requestOptions = {
  method: 'POST',
  headers: myHeaders,
  body: raw,
  redirect: 'follow'
};

fetch('https://api.placekit.co/search', requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));