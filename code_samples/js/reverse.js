var myHeaders = new Headers();
myHeaders.append('Content-Type', 'application/json');
myHeaders.append('x-placekit-api-key', '<PLACEKIT_API_KEY>');

var raw = JSON.stringify({
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

fetch('https://api.placekit.co/reverse', requestOptions)
  .then(response => response.text())
  .then(result => console.log(result))
  .catch(error => console.log('error', error));