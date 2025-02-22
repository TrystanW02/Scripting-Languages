from nslookup import Nslookup

class NsLookup:
    def nslookup(self, domain):
        """
        
        Perform a DNS lookup for a host.

        Args:
            domain(string): Doomain that you want to find the IP Address for

        """
        # In the below query, I used one of the Google's DNS servers
        dns_query = Nslookup(dns_servers=["8.8.8.8"])
        dns_record = dns_query.dns_lookup(domain)
        print(dns_record.response_full, dns_record.answer)
if __name__ == "__main__":
    ns_lookup = NsLookup()
    ns_lookup.nslookup("google.com")

