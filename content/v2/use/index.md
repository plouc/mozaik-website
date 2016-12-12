---
title: Getting started
description: Have Mozaïk V2 up and running in minutes
weight: 10
menu: use-v2
---

This is the install guide for Mozaïk v2, be aware that this version
is in alpha stage so you won't be able to use all extensions, you can check
[extensions compatibility]({{< relref "extensions/index.md" >}}).

## Sample Repo

The easiest way to get started is by using the [demo dashboard](https://github.com/plouc/mozaik-demo).<br />
For now Mozaïk stable version is V1, in order to install V2 you must use the dedicated branch.

``` bash
git clone git@github.com:plouc/mozaik-demo.git
git checkout mozaik-2
```

### Install packages & publish assets

``` bash
cd mozaik-demo
# using npm
npm install
# or yarn
yarn install
```

If for some reason the install command fails, the asset generation should be skipped,
you can re-run it with:

``` bash
# using npm
npm run build
# or yarn
yarn build
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

```bash
# using npm
npm start
# or yarn
yarn start
```

**Mozaïk** can be configured through a simple yaml config file `config.yml` located at the root folder.
You should start from the default config file and
[customize it to fit your needs]({{< relref "v2/use/config.md" >}}).
