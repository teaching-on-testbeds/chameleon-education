::: {.cell .markdown}
### Define configuration for this experiment 
:::

::: {.cell .code}
```python
username = os.getenv('USER')

node_conf = [
 {'name': "romeo",     'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "juliet",    'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "hamlet",    'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "ophelia",   'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "othello",   'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "desdemona", 'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},

 {'name': "router-a",'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "router-b",'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "router-c",'cores': 1, 'ram': 2, 'disk': 10, 'image': 'CC-Ubuntu22.04', 'packages': []}

]
net_conf = [
 {"name": "net-r", "subnet": "10.10.100.0/24", "nodes": [{"name": "router-a",   "addr": "10.10.100.1"}, {"name": "router-b",   "addr": "10.10.100.2"}, {"name": "router-c",   "addr": "10.10.100.3"}]},
 {"name": "net-a", "subnet": None, "nodes": [{"name": "router-a",  "addr": None}, {"name": "romeo", "addr": None}, {"name": "juliet", "addr": None}]},
 {"name": "net-b", "subnet": None, "nodes": [{"name": "router-b",  "addr": None}, {"name": "othello", "addr": None}, {"name": "desdemona", "addr": None}]},
 {"name": "net-c", "subnet": None, "nodes": [{"name": "router-c",  "addr": None}, {"name": "hamlet", "addr": None}, {"name": "ophelia", "addr": None}]},
]
route_conf = []

```
:::
