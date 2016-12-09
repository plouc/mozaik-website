---
title: Getting started
baseline: Have Mozaïk up and running in minutes
weight: 10
menu: usageV2
---
## Sample Repo

The easiest way to get started is by using the [demo dashboard](https://github.com/plouc/mozaik-demo).

### Clone the repo

```bash
git clone git@github.com:plouc/mozaik-demo.git
```

### Install packages

```bash
cd mozaik-demo
npm install
```

### Publish assets (js/css)

```bash
gulp build
```

### Add github tokens in a `.env` file

This step is optional, it's useful if you want to bypass github api rate limit.

```
GITHUB_API_TOKEN=xxxxx
```

### Run the app

```bash
node app.js
```

## Yeoman generator

Alternatively, use provided [Yeoman generator][yo-generator-url] available to start with new dashboard or widget:

``` sh
npm install -g yo gulp generator-mozaik
yo mozaik
npm install
gulp build
node app.js
```

**Mozaïk** can be configured through a simple js config file `config.js` located at the root folder.
You should start from the default config file and customize it to fit your needs.

## Docker

*coming soon*

[yo-generator-url]: https://www.npmjs.com/package/generator-mozaik
