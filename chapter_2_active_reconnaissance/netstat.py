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