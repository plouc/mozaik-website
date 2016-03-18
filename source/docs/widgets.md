title: Configuration
baseline: Configure Mozaïk widgets
comments: false
---
Widgets are the building blocks of a Mozaïk dashboard, a widget is in fact a react component which often communicates with an API.
Mozaïk comes with no widget, they are installed through extensions, see [available extensions](/mozaik/extensions).

Widgets share some common properties which are all required:

| key         | description                         |
| ----------- | ----------------------------------- |
| **type**    | *the type of widget to instantiate* |
| **x**       | *x position*                        |
| **y**       | *y position*                        |
| **columns** | *width expressed in columns*        |
| **rows**    | *height expressed in rows*          |

*for properties related to position/size see [grid system](/mozaik/docs/grid-system.html).*
