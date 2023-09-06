::: {.cell .markdown}
### Define configuration for this experiment (two hosts and router` in line topology)
:::

::: {.cell .code}
```python
username = os.getenv('USER')

node_conf = [
 {'name': "romeo",   'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "juliet",  'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "router",  'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}
]
net_conf = [
 {"name": "net1", "subnet": "10.0.1.0/24", "nodes": [{"name": "romeo",   "addr": "10.0.1.100"}, {"name": "router", "addr": "10.0.1.10"}]},
 {"name": "net2", "subnet": "10.0.2.0/24", "nodes": [{"name": "juliet",  "addr": "10.0.2.100"}, {"name": "router", "addr": "10.0.2.10"}]}
]
route_conf = [
 {"addr": "10.0.2.0/24", "gw": "10.0.0.10", "nodes": ["romeo"]}, 
 {"addr": "10.0.1.0/24", "gw": "10.0.1.10", "nodes": ["juliet"]}
]
```
:::
