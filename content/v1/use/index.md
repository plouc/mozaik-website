---
title: Getting started
description: Have Mozaïk up and running in minutes
weight: 10
menu:
  main:
    identifier: use-v1-index
    parent:     use-v1
---
## Sample Repo

The easiest way to get started is by using the [demo dashboard](https://github.com/plouc/mozaik-demo).

### Clone the repo

``` bash
git clone git@github.com:plouc/mozaik-demo.git
```

### Install packages & publish assets

``` bash
cd mozaik-demo
npm install
```

If for some reason the install command fails, the asset generation should be skipped,
you can re-run it with:

``` bash
npm run build
```

### Add github tokens in a `.env` file

This step is optional, it's useful if you want to bypass github api rate limit.
You have to generate a token for your dashboard from your GitHub account,
and then set the appropriate var for `mozaik-ext-github` which is installed by default.

``` bash
# ./.env
GITHUB_API_TOKEN=xxxxx
```

### Run the app

``` bash
node app.js
```
