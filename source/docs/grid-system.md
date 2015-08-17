title: Configuration
baseline: Configure Mozaïk grid system
comments: false
---
Mozaïk provide a simple way to define dashboard layout


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
  dashboards: [
    {
      columns: 3,
      rows:    2,
      widgets: [
        { // A
          type: 'whatever',
          columns: 1, rows: 1,
          x: 0, y: 0
        },
        { // B
          type: 'whatever',
          columns: 2, rows: 1,
          x: 1, y: 0
        },
        { // C
          type: 'whatever',
          columns: 2, rows: 1,
          x: 0, y: 1
        },
        { // D
          type: 'whatever',
          columns: 1, rows: 1,
          x: 2, y: 1
        }
      ]
    }
  ]
```
