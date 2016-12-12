---
title: Extension client [poll mode]
description: How to feed your hungry widgets by regularly fetching some external API data
weight: 40
menu:
  main:
    identifier: hack-v1-client-poll
    parent:     hack-v1
---
If you didn't read the [intro]({{< relref "v1/hack/client.md" >}}) on Mozaïk extension clients,
then you should consider [reading it first]({{< relref "v1/hack/client.md" >}}).

When you register your extension's client to Mozaïk, you have the ability to pass a **mode**
which determine how the data will be pulled from your external service to Mozaïk.

`poll` mode is the default mode set when you register a client to Mozaïk.

## When using `poll` mode

It's useful when you want your client to fetch data from an external service at a given interval.

See [this page]({{< relref "v1/hack/client.md" >}}) for usage.
