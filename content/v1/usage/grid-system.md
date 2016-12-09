---
title: Grid system
baseline: Configure Mozaïk grid system
weight: 30
menu: usageV1
---
As we saw previously in the [config.js](/usage/config-file.html) section, **Mozaïk** provides a simple way to define dashboard layout. Let's see how it works.


To configure a layout like this:

```
                         columns: 3
 +——————————————————+——————————————————+——————————————————+
 |                  |                                     |
 | A -> x: 0  y: 0  |        B -> x: 1  y: 0              |
 |      columns: 1  |             columns: 2              |
 |      rows:    1  |             rows:    1              |
 |                  |                                     |
 +——————————————————+——————————————————+——————————————————+  rows: 2
 |                                     |                  |
 |        C -> x: 0  y: 1              | D -> x: 2  y: 1  |
 |             columns: 2              |      columns: 1  |
 |             rows:    1              |      rows:    1  |
 |                                     |                  |
 +——————————————————+——————————————————+——————————————————+

```

You should have the following config:

``` javascript
{
    //...
    dashboards: [
        {
            columns: 3, rows: 2,
            widgets: [
                {
                    type: 'whatever',
            /* A */ columns: 1, rows: 1,
                    x: 0, y: 0
                },
                {
                    type: 'whatever',
            /* B */ columns: 2, rows: 1,
                    x: 1, y: 0
                },
                {
                    type: 'whatever',
            /* C */ columns: 2, rows: 1,
                    x: 0, y: 1
                },
                {
                    type: 'whatever',
            /* D */ columns: 1, rows: 1,
                    x: 2, y: 1
                }
            ]
        }
    ]
}
```
