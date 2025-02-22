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

### ◾ _Forensic Analysis_

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
---
### Small image

![Octocat](https://github.githubassets.com/images/icons/emoji/octocat.png)

### Large image

![Branching](https://guides.github.com/activities/hello-world/branching.png)
