---
title: Widgets
baseline: Configure Mozaïk widgets
weight: 50
menu: useV2
---
Widgets are the building blocks of a Mozaïk dashboard, a widget is in fact a react component which often communicates with an API.
Mozaïk comes with just a few core widgets, others must be installed through extensions, see [available extensions](/extensions).

Widgets share some common properties which are all required:

| key         | description                         |
| ----------- | ----------------------------------- |
| **type**    | *the type of widget to instantiate* |
| **columns** | *width expressed in columns*        |
| **rows**    | *height expressed in rows*          |
| **x**       | *x position*                        |
| **y**       | *y position*                        |

Example:

``` yaml
# ~/mozaik-demo/config.yml
dashboards:
  - columns: 3
    rows:    3
    widgets:
      - type:    mozaik.inspector
        columns: 1
        rows:    1
        x:       0
        y:       0
```

*for properties related to position/size see [grid system](/v2/usage/grid-system.html).*
