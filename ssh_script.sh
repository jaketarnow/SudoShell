#ssh script for pi

touch ~/.ssh/config                         # creates new config file
> ~/.ssh/config                             # clears content of config file

echo "Host thisPi" >> ~/.ssh.config         # creates new ssh host called thisPi
echo "User pi" >> ~/.ssh/config             # adds args user EDIT PI -> "pi"

arp |                                       # scans wlan0
grep '[MAC ADDRESS]' |                       # finds info associated to MAC address HWaddr
awk '{print $1}' |                          # prints args 1
xargs echo "HostName " >> ~/.ssh/config     # gets arg 1 from print pipe

ssh thisPi
