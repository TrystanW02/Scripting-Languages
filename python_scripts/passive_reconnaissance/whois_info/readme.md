# Using “whois” to get information about an IP address or domain name
\*\*\*DESCRIPTION\*\*\*

# _Output_

```
{
"domain_name": "[GOOGLE.COM](http://google.com/)",
"registrar": "MarkMonitor, Inc.",
"registrar_url": "[http://www.markmonitor.com](http://www.markmonitor.com/)",
"reseller": null,
"whois_server": "[whois.markmonitor.com](http://whois.markmonitor.com/)",
"referral_url": null,
"updated_date": [
"2019-09-09 15:39:04",
"2024-08-02 02:17:33+00:00"
],
"creation_date": [
"1997-09-15 04:00:00",
"1997-09-15 07:00:00+00:00"
],
"expiration_date": [
"2028-09-14 04:00:00",
"2028-09-13 07:00:00+00:00"
],
"name_servers": [
"[NS1.GOOGLE.COM](http://ns1.google.com/)",
"[NS2.GOOGLE.COM](http://ns2.google.com/)",
"[NS3.GOOGLE.COM](http://ns3.google.com/)",
"[NS4.GOOGLE.COM](http://ns4.google.com/)"
],
"status": [
"clientDeleteProhibited https://icann.org/epp#clientDeleteProhibited",
"clientTransferProhibited https://icann.org/epp#clientTransferProhibited",
"clientUpdateProhibited https://icann.org/epp#clientUpdateProhibited",
"serverDeleteProhibited https://icann.org/epp#serverDeleteProhibited",
"serverTransferProhibited https://icann.org/epp#serverTransferProhibited",
"serverUpdateProhibited https://icann.org/epp#serverUpdateProhibited",
"clientUpdateProhibited (https://www.icann.org/epp#clientUpdateProhibited)",

"clientTransferProhibited (https://www.icann.org/epp#clientTransferProhibited)",

"clientDeleteProhibited (https://www.icann.org/epp#clientDeleteProhibited)",

"serverUpdateProhibited (https://www.icann.org/epp#serverUpdateProhibited)",

"serverTransferProhibited (https://www.icann.org/epp#serverTransferProhibited)",

"serverDeleteProhibited (https://www.icann.org/epp#serverDeleteProhibited)"
],
"emails": [
"[abusecomplaints@markmonitor.com](mailto:abusecomplaints@markmonitor.com)",
"[whoisrequest@markmonitor.com](mailto:whoisrequest@markmonitor.com)"
],
"dnssec": "unsigned",
"name": null,
"org": "Google LLC",
"address": null,
"city": null,
"state": "CA",
"registrant_postal_code": null,
"country": "US"
}
```

# _Line Breakdown_

## 1. Importing the `whois` Module
```python
import whois as ws
```

* The `whois` module is imported, which allows querying WHOIS information for a domain.
* `as ws` is an alias, meaning we can refer to `whois` as `ws` throughout the code.

## 2. Defining the `WhoisInfo` Class
```python
class WhoisInfo:
```

* A class named `WhoisInfo` is created.
* This class is responsible for handling WHOIS lookups.

## 3. Defining the `print_whois_info` Method
```python
def print_whois_info(self, host):
```

* This method is defined inside the `WhoisInfo` class.
* `self` refers to the instance of the class.
* The method takes `host` as a parameter, which is the domain name to look up.

## 4. Method Docstring
```python
"""
    host: Host that you want the whois details for.
"""
```

* This is a **docstring**, which provides information about the method.
* It explains that `host` is the domain name whose WHOIS information will be retrieved.

## 5. Fetchinng WHOIS Information
```python
whois_info = ws.whois(host)
```

* Calls the whois function from the whois module (aliased as ws).
* The function fetches WHOIS details for the given domain (host).
* The details include information like:
* Domain name
    - Registrar
    - Registration date
    - Expiry date
    - Name servers, etc.
