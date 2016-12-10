---
title: Getting started
description: Have Mozaïk up and running in minutes
weight: 10
menu: useV1
---
## Sample Repo

The easiest way to get started is by using the [demo dashboard](https://github.com/plouc/mozaik-demo).

### Clone the repo

``` bash
git clone git@github.com:plouc/mozaik-demo.git
```

### Install packages

``` bash
cd mozaik-demo
npm install
```

### Publish assets (js/css)

``` bash
gulp build
```

### Add github tokens in a `.env` file

This step is optional, it's useful if you want to bypass github api rate limit.

``` bash
GITHUB_API_TOKEN=xxxxx
```

### Run the app

``` bash
node app.js
```

## Docker

*coming soon*
