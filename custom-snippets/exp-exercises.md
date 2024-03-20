::: {.cell .markdown}
### Run the experiment

Now, you are ready to run the experiment! Follow the instructions in the [Secure networked applications](https://witestlab.poly.edu/blog/secure-networked-applications/) page to use different networked applications for remote login, file transfer, and web browsing. Each experiment will generate a packet capture, which you can download following the instructions below.

:::

::: {.cell .markdown}

### Exercise: Transfer .pcap files from remote hosts

After you have executed the relevant experiment, you can retrieve the packet captures for further analysis using the cells below. 

You should see the .pcap files appear in the Jupyter file browser on the left. You can now download this file from the Jupyter environment to your own laptop to analyze them in Wireshark.


:::

::: {.cell .code}
```python
# remote login experiments
romeo_remote = chi.ssh.Remote(server_ips[0])
romeo_remote.get("/home/cc/security-telnet-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
romeo_remote.get("/home/cc/security-ssh-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
```
:::

::: {.cell .code}
```python
# file transfer experiments
romeo_remote = chi.ssh.Remote(server_ips[0])
romeo_remote.get("/home/cc/security-ftp-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
romeo_remote.get("/home/cc/security-sftp-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
```
:::

::: {.cell .code}
```python
# web browsing experiments
romeo_remote = chi.ssh.Remote(server_ips[0])
romeo_remote.get("/home/cc/security-http-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
romeo_remote.get("/home/cc/security-https-" +   romeo_remote.run("hostname -s").stdout.strip("\n") + ".pcap")
```
:::

