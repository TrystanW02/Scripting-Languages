# Skills

- Scripting
  - Python
  - BASH
  - Powershell
- Hypervisors
  - VirtualBox
  - VMWare

---

# Formal Education

B.S. Information Science & Technology - University of Oklahoma

---

# Certifications

Google Cybersecurity Certification - Coursera\
Security+ Certification (In Progress) - CompTIA

---

# Projects

## *Cybersecurity Lab*

## *CTF Challenges*

## *Networking*

## *SIEM building*

## *Honeypot*

## *Malware Analysis*

## *Scripting*

### ◾ _Passive Reconnaissance_

### ◾ _Active Reconnaissance_
#### _Using ping to check connectivity to the target system_
> This program needs to be run as "administrator" or with "sudo" privileges; otherwise, it will fail

Before running the script, be sure to install "pythonping"

```bash
pip3 install pythonping
```
```python
from pythonping import ping

class PingConnectivity:
    def check_ping_connectivity(self, host) -> None:
        ping (host, verbose=True)
        
if __name__ == "__main__":
    ping_check_connectivity = PingConnectivity()
    ping_check_connectivity.check_ping_connectivity('google.com')
}
```
##### _Output_
```
Reply from 142.251.116.102, 29 bytes in 16.43ms
Reply from 142.251.116.102, 29 bytes in 28.6ms
Reply from 142.251.116.102, 29 bytes in 15.41ms
Reply from 142.251.116.102, 29 bytes in 16.14ms
```
---
#### _Finding details about your network interfaces and ports using netstat_
> This program needs to be run as "administrator" or with "sudo" privileges; otherwise, it will fail

Before running the script, be sure to install "psutil"

```bash
pip3 install psutil
```
```python
from psutil import net_connections

class NetStats:
    def print_net_connections(self) -> None:
        print('TCP Connections:')
        print(net_connections(kind='tcp'))
        print('\n')
        print('UDP Connections:')
        print(net_connections(kind='udp'))

if __name__ == "__main__":
    netstats = NetStats()
    netstats.print_net_connections()
```
##### _Output_
```
TCP Connections:
[sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49671), raddr=(), status='LISTEN', pid=1504), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49669), raddr=(), status='LISTEN', pid=744), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49665), raddr=(), status='LISTEN', pid=724), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=52811), raddr=addr(ip='23.213.55.72', port=443), status='CLOSE_WAIT', pid=10840), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49667), raddr=(), status='LISTEN', pid=4728), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=51984), raddr=addr(ip='208.103.161.1', port=443), status='ESTABLISHED', pid=12588), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=139), raddr=(), status='LISTEN', pid=4), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53251), raddr=addr(ip='104.18.36.252', port=443), status='TIME_WAIT', pid=0), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='127.0.0.1', port=5354), raddr=(), status='LISTEN', pid=3880), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49669), raddr=(), status='LISTEN', pid=744), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=65271), raddr=addr(ip='20.7.2.167', port=443), status='ESTABLISHED', pid=13516), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53234), raddr=addr(ip='172.64.151.4', port=443), status='TIME_WAIT', pid=0), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53253), raddr=addr(ip='13.107.246.57', port=443), status='ESTABLISHED', pid=12832), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=51753), raddr=addr(ip='142.251.116.188', port=5228), status='ESTABLISHED', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49666), raddr=(), status='LISTEN', pid=3088), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49666), raddr=(), status='LISTEN', pid=3088), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53235), raddr=addr(ip='35.155.162.205', port=443), status='TIME_WAIT', pid=0), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53175), raddr=addr(ip='140.82.114.26', port=443), status='ESTABLISHED', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53250), raddr=addr(ip='146.148.16.38', port=443), status='ESTABLISHED', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49664), raddr=(), status='LISTEN', pid=1052), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=445), raddr=(), status='LISTEN', pid=4), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=51983), raddr=addr(ip='208.103.161.1', port=443), status='ESTABLISHED', pid=12588), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=7680), raddr=(), status='LISTEN', pid=9660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=49665), raddr=(), status='LISTEN', pid=724), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=49705), raddr=addr(ip='20.7.1.246', port=443), status='ESTABLISHED', pid=2296), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=445), raddr=(), status='LISTEN', pid=4), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=52813), raddr=addr(ip='23.213.55.63', port=443), status='CLOSE_WAIT', pid=10840), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=135), raddr=(), status='LISTEN', pid=1440), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49671), raddr=(), status='LISTEN', pid=1504), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::', port=135), raddr=(), status='LISTEN', pid=1440), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=5040), raddr=(), status='LISTEN', pid=752), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=7680), raddr=(), status='LISTEN', pid=9660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='::1', port=49668), raddr=(), status='LISTEN', pid=5664), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53232), raddr=addr(ip='20.189.173.28', port=443), status='ESTABLISHED', pid=12832), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53255), raddr=addr(ip='104.18.36.252', port=443), status='ESTABLISHED', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49664), raddr=(), status='LISTEN', pid=1052), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='192.168.4.36', port=53252), raddr=addr(ip='50.112.66.220', port=443), status='ESTABLISHED', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_STREAM: 1>, laddr=addr(ip='0.0.0.0', port=49667), raddr=(), status='LISTEN', pid=4728)]


UDP Connections:
[sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::1', port=49355), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='192.168.4.36', port=5353), raddr=(), status='NONE', pid=3880), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='fe80::334:93de:7a8c:6941', port=1900), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::1', port=5353), raddr=(), status='NONE', pid=3880), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=5050), raddr=(), status='NONE', pid=752), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::', port=5355), raddr=(), status='NONE', pid=2044), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=5355), raddr=(), status='NONE', pid=2044), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='192.168.4.36', port=137), raddr=(), status='NONE', pid=4), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::', port=123), raddr=(), status='NONE', pid=9756), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='192.168.4.36', port=1900), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::', port=5353), raddr=(), status='NONE', pid=4584), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=5353), raddr=(), status='NONE', pid=2044), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='127.0.0.1', port=49357), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::1', port=1900), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='192.168.4.36', port=49356), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=49664), raddr=(), status='NONE', pid=3880), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=50534), raddr=(), status='NONE', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=53849), raddr=(), status='NONE', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=123), raddr=(), status='NONE', pid=9756), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='127.0.0.1', port=1900), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='fe80::334:93de:7a8c:6941', port=49354), raddr=(), status='NONE', pid=4660), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::', port=49665), raddr=(), status='NONE', pid=3880), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='192.168.4.36', port=138), raddr=(), status='NONE', pid=4), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=52598), raddr=(), status='NONE', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=57286), raddr=(), status='NONE', pid=12960), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='0.0.0.0', port=5353), raddr=(), status='NONE', pid=4584), sconn(fd=-1, family=<AddressFamily.AF_INET: 2>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='127.0.0.1', port=49666), raddr=(), status='NONE', pid=3620), sconn(fd=-1, family=<AddressFamily.AF_INET6: 23>, type=<SocketKind.SOCK_DGRAM: 2>, laddr=addr(ip='::', port=5353), raddr=(), status='NONE', pid=2044)]
```
### ◾ _Forensic Analysis_

---
### Small image

![Octocat](https://github.githubassets.com/images/icons/emoji/octocat.png)

### Large image

![Branching](https://guides.github.com/activities/hello-world/branching.png)
