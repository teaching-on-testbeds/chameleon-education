::: {.cell .markdown}
### Define configuration for this experiment (two hosts and router` in line topology)
:::

::: {.cell .code}
```python
username = os.getenv('USER')

node_conf = [
 {'name': "romeo",   'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "juliet",  'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "hamlet",  'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []},
]
net_conf = [
 {"name": "net0", "subnet": "10.0.0.0/24", "nodes": [{"name": "romeo",   "addr": "10.0.0.100"}, {"name": "juliet", "addr": "10.0.0.101"}, {"name": "hamlet", "addr": "10.0.0.102"}]}
]
route_conf = []
```
:::
