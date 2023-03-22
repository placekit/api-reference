<h1 align="center">
  PlaceKit API Reference
</h1>

<p align="center">
  <b>Location data, search and autocomplete for your apps</b>
</p>

<div align="center">

  [![LICENSE](https://img.shields.io/github/license/placekit/api-reference?style=flat-square)](https://creativecommons.org/licenses/by-sa/4.0/)
  
</div>

---

PlaceKit REST API Reference helps you use our services with any language.
It's available at [api.placekit.io](https://api.placekit.io), and you can also download our [OpenAPI specification](./openapi.yml).

For front-end use cases, we **highly recommend** using our JavaScript libraries instead of accessing our API directly.
Find out about all available SDKs and libraries in our [GitHub organisation](https://github.com/placekit) or our [developers section](https://placekit.io/developers) on our website.

## 🏗️ Maintain specifications

We use the open source [Redocly CLI](https://redocly.com/docs/cli/) to generate our documentation website based on [OpenAPI Specifications](https://spec.openapis.org/oas/latest.html) version 3.1.0.

```sh
npm install # install Redocly CLI tool
npm start   # preview changes at http://localhost:8080/
npm lint    # according to OpenAPI specifications 3.1.0
npm build   # generates HTML documentation in `dist/index.html`
```

## 🚚 Deployment

Deployment of a new version is handled by a [Github Action](.github/workflows/ci.yml) publishing the generated HTML on Github Pages.

## ⚖️ License

This repository is licensed under the [CC-BY-SA-4.0 license](https://creativecommons.org/licenses/by-sa/4.0/).
The API usage depends on our [Terms and Conditions](https://placekit.io/terms). 