::: {.cell .markdown}
### Define configuration for this experiment 
:::

::: {.cell .code}
```python
username = os.getenv('USER')

node_conf = [
 {'name': "romeo",      'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "juliet",     'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []}, 
 {'name': "server",     'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "vpn",        'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "router-int", 'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []},
 {'name': "router-ext", 'flavor': 'm1.small', 'image': 'CC-Ubuntu22.04', 'packages': []},
]
net_conf = [
 {"name": "net-int-1", "subnet": "10.10.1.0/24", "nodes": [{"name": "romeo",   "addr": "10.10.1.100"}, {"name": "router-int", "addr": "10.10.1.1"}]},
 {"name": "net-int-2", "subnet": "10.10.2.0/24", "nodes": [{"name": "server",  "addr": "10.10.2.100"}, {"name": "router-int", "addr": "10.10.2.1"}]},
 {"name": "net-ext-3", "subnet": "10.10.3.0/24", "nodes": [{"name": "vpn",     "addr": "10.10.3.100"}, {"name": "router-int", "addr": "10.10.3.1"}]},
 {"name": "net-ext-4", "subnet": "10.10.4.0/24", "nodes": [{"name": "vpn",     "addr": "10.10.4.100"}, {"name": "router-ext", "addr": "10.10.4.1"}]},
 {"name": "net-ext-5", "subnet": "10.10.5.0/24", "nodes": [{"name": "juliet",  "addr": "10.10.5.100"}, {"name": "router-ext", "addr": "10.10.5.1"}]},
]
route_conf = [
 {"addr": "10.10.0.0/16", "gw": "10.10.5.1",   "nodes": ["juliet"]},
 {"addr": "10.10.0.0/16", "gw": "10.10.2.1",   "nodes": ["server"]},
 {"addr": "10.10.0.0/16", "gw": "10.10.1.1",   "nodes": ["romeo"]},
 {"addr": "10.10.0.0/16", "gw": "10.10.3.1",   "nodes": ["vpn"]},
 {"addr": "10.10.5.0/24", "gw": "10.10.4.1",   "nodes": ["vpn"]},
 {"addr": "10.10.0.0/16", "gw": "10.10.3.100", "nodes": ["router-int"]},
 {"addr": "10.10.0.0/16", "gw": "10.10.4.100", "nodes": ["router-ext"]}
]
```
:::
