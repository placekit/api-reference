package main

import (
  "fmt"
  "strings"
  "net/http"
  "io/ioutil"
)

func main() {

  url := "https://api.placekit.co/search"
  method := "POST"

  payload := strings.NewReader(`{
    "query": "42 avenue Champs Elysees Paris",
    "countries": ["fr"],
    "language": "fr",
    "types": ["street"],
    "maxResults": 5,
    "coordinates": "48.873662, 2.295063"
  }`)

  client := &http.Client {
  }
  req, err := http.NewRequest(method, url, payload)

  if err != nil {
    fmt.Println(err)
    return
  }
  req.Header.Add("Content-Type", "application/json")
  req.Header.Add("x-placekit-api-key", "<PLACEKIT_API_KEY>")

  res, err := client.Do(req)
  if err != nil {
    fmt.Println(err)
    return
  }
  defer res.Body.Close()

  body, err := ioutil.ReadAll(res.Body)
  if err != nil {
    fmt.Println(err)
    return
  }
  fmt.Println(string(body))
}