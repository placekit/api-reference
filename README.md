<h1 align="center">
  PlaceKit API Reference
</h1>

<p align="center">
  <b>Location data, search and autocomplete for your apps</b>
</p>

---

[Official documentation](https://api.placekit.io/) of PlaceKit REST API.

We are using [OpenAPI specifications](https://spec.openapis.org/oas/latest.html) version 3.1.0 to document every detail of our REST API.

## How to contribute

### Install Redocly

We use the open source [Redocly CLI](https://redocly.com/docs/cli/) to generate our documentation.

```sh
npm install
```

### Run locally

Edit the specifications [openapi.yml](openapi.yml) and open your browser at http://localhost:8080/ (hot reloading enabled).

```sh
npm start
```

### Linter

Lint [openapi.yml](openapi.yml) according to OpenAPI specifications 3.1.0.

```sh
npm lint
```

### Build

This generates an HTML version based on the specifications in `dist/index.html`

```sh
npm build
```

### Deployment

Deployment of a new version is handled by a [Github Action](.github/workflows/ci.yml) publishing the generated HTML on Github Pages.