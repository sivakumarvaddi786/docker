#!/usr/bin/python
import sys, os, subprocess
from haproxystats import HAProxyServer
haproxy1 = HAProxyServer(base_url="qsoec-crm-lb02:9000/haproxy_stats", user="haproxy", password="stats", verify_ssl=False, timeout=50, https=False)
with open('filename.txt', 'w') as f:
        sys.stdout = f
        for d in haproxy1.listeners:
            print('%s: %s' % (d.name, d.status))
subprocess.call(["./shell.sh"])
