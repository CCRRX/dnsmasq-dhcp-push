# dnsmasq-dhcp-push
Get a push notification when a DHCP release is created or deleted.<br>

Installation
============

1: Install the Pushover app on your phone (Yes its a 7 day trail, but only ~5$ ...  - YOU know a better free app? Please tell it to me!)<br>
2: edit the dnsmasq config<br> 
if youre running a classic dnsmasq, edit /etc/dnsmasq.conf and add this line:<br>
`dhcp-script=/var/dnsmasq/push.sh` <br>
if youre running a OpenWRT Router, login via SSH and edit the /etc/config/dhcp and add under the "config dnsmasq" line this<br>
`option dhcp-script '/var/dnsmasq/push.sh'`<br>
3: uploade the script and dont forget to fill in our keys<br>
`vi /var/dnsmasq/push.sh`<br>
(maybe you need to create the folder dnsmasq at var!)<br>
4: make it executable<br>
`chmod +x /var/dnsmasq/push.sh`<br>
5: test it <br>
`/var/dnsmasq/push.sh`<br>
now you should see a notificaton on your phone :)<br>
6: restart dnsmasq<br>
`/etc/init.d/dnsmasq reload`<br>
(if this fails `/etc/init.d/dnsmasq restart`)<br>
7: now you should get a lot of noifications on your phone for every device thats conneted :><br>

8: If you see me, please give me a beer or stuff like this ;D
