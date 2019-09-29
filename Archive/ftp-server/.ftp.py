from pyftpdlib.authorizers import DummyAuthorizer
from pyftpdlib.handlers import FTPHandler
from pyftpdlib.servers import FTPServer
import os

def main():
    # Instantiate a dummy authorizer for managing 'virtual' users
    authorizer = DummyAuthorizer()

    # Define a new user having full r/w permissions and a read-only
    # anonymous user
    authorizer.add_user('uranus', 'abc123', '.', perm='elradfmwM')
    #authorizer.add_anonymous(os.getcwd())
    authorizer.add_anonymous("/cloudata/")

    # Instantiate FTP handler class
    handler = FTPHandler
    handler.authorizer = authorizer

    # Define a customized banner (string returned when client connects)
    handler.banner = "pyftpdlib based ftpd ready."

    # -- Specify a masquerade address and the range of ports to use for
    # -- passive connections.  Decomment in case you're behind a NAT.
    # handler.masquerade_address = '47.106.75.136'
    handler.masquerade_address = '192.168.0.130'
    handler.passive_ports = range(60000, 65535)

    # Instantiate FTP server class and listen on 0.0.0.0:2121
    address = ('', 8000)
    server = FTPServer(address, handler)

    # set a limit for connections
    server.max_cons = 1000
    server.max_cons_per_ip = 10000

    # start ftp server
    server.serve_forever()

if __name__ == '__main__':
    main()
