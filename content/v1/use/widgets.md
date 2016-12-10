---
title: Widgets
description: Configure Mozaïk widgets
weight: 50
menu: useV1
---
Widgets are the building blocks of a Mozaïk dashboard, a widget is in fact
a react component which often communicates with an API.
Mozaïk comes with just a few core widgets, others must be installed through extensions,
see [available extensions]({{< relref "extensions/index.md" >}}).

Widgets share some common properties which are all required:

| key         | description                         |
| ----------- | ----------------------------------- |
| **type**    | *the type of widget to instantiate* |
| **x**       | *x position*                        |
| **y**       | *y position*                        |
| **columns** | *width expressed in columns*        |
| **rows**    | *height expressed in rows*          |

*for properties related to position/size see [grid system]({{< relref "v1/use/grid.md" >}}).*
