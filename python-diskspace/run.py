from __future__ import print_function
from pssh.pssh_client import ParallelSSHClient

all_hosts = []

by_tens = []

inventory = open("/Users/smarman/Desktop/test-file")

for line in inventory:
    if line != "":
        all_hosts.append(line.rstrip())

def init_check():
    client = ParallelSSHClient(by_tens)
    output = client.run_command("df -h /")
    for host, host_output in output.items():
        for line in host_output.stdout:
            print(line)

## find by 10
#counter = 0
#for host in all_hosts:
#    if counter < 10:
#        by_tens.append(host)
#        counter += 1
#    if counter == 10:
#        init_check()

def show_hosts(hosts):
    print(hosts)

leng = len(all_hosts)
print(leng)
print (type(all_hosts))
while leng > 0:
    by_two = [all_hosts[:2]]
    show_hosts(by_two)
    for host in by_two:
        print (host)
        #all_hosts.remove(host)

