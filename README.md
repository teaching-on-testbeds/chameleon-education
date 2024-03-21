# Teaching computer networks on Chameleon

This repository collects network topologies + configurations for teaching computer networks on Chameleon.

A typical sequence for computer networks, following Kurose & Ross 8th edition, might be:

* [Hello, Chameleon](https://teaching-on-testbeds.github.io/hello-chameleon/)
* [Hello, Linux](https://teaching-on-testbeds.github.io/hello-linux/index-chi) (optional)
* [TCP/IP protocol stack](https://teaching-on-testbeds.github.io/blog/protocol-layers) (aligned with Chapter 1 in Kurose & Ross )
* [Socket programming](https://teaching-on-testbeds.github.io/blog/sockets-python) in Python (Chapter 2-3 in K&R)
* [TCP congestion control](https://teaching-on-testbeds.github.io/blog/tcp-congestion-control) (Chapter 3 in K&R)
* [Static routing](https://teaching-on-testbeds.github.io/blog/static-routing) (Chapter 4 in K&R)
* [Designing subnets](https://teaching-on-testbeds.github.io/blog/designing-subnets) (Chapter 4 in K&R)
* [ARP](https://teaching-on-testbeds.github.io/blog/address-resolution-protocol-arp) (Chapter 6 in K&R)
* [Secure networked applications](https://teaching-on-testbeds.github.io/blog/secure-applications) (Chapter 8 in K&R)
* [Network layer security](https://teaching-on-testbeds.github.io/blog/network-layer-security) (Chapter 8 in K&R)


To retrieve these materials into your `work` directory on the Chameleon JupyterHub, you should run (in a terminal there):

```
cd work
git clone https://github.com/teaching-on-testbeds/hello-chameleon hello_chameleon
git clone -b stack https://github.com/teaching-on-testbeds/chameleon-education tcp_ip_stack
git clone https://github.com/teaching-on-testbeds/sockets-python.git sockets_python
git clone -b tcp_congestion_control https://github.com/teaching-on-testbeds/chameleon-education tcp_congestion_control
git clone -b static_routing https://github.com/teaching-on-testbeds/chameleon-education static_routing
git clone -b subnets https://github.com/teaching-on-testbeds/chameleon-education subnets
git clone -b arp https://github.com/teaching-on-testbeds/chameleon-education arp
git clone -b secure_applications https://github.com/teaching-on-testbeds/chameleon-education secure_applications
git clone -b network_security https://github.com/teaching-on-testbeds/chameleon-education network_security
```

---

This material is based upon work supported by the National Science Foundation under Grant No. 2231984.

