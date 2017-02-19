# dnsmasq-dhcp-push
Get a push notification when a DHCP lease is created or deleted.<br>

Installation
============

1: Install the Pushover app on your phone (Yes its a 7 day trail, but only ~5$ ...  - YOU know a better free app? Please tell it to me!)<br>
https://pushover.net/clients<br>
2: Edit the dnsmasq config.<br> 
If youre running a classic dnsmasq, edit /etc/dnsmasq.conf and add this line:<br>
`dhcp-script=/var/dnsmasq/push.sh` <br>
IF youre running a OpenWRT Router, login via SSH and edit the /etc/config/dhcp and add under the "config dnsmasq" line this:<br>
`option dhcp-script '/var/dnsmasq/push.sh'`<br>
3: Uploade the script and dont forget to fill in our keys!<br>
`vi /var/dnsmasq/push.sh`<br>
(maybe you need to create the folder dnsmasq at var!)<br>
4: Make it executable:<br>
`chmod +x /var/dnsmasq/push.sh`<br>
5: Testingtime! <br>
`/var/dnsmasq/push.sh`<br>
Now you should see a notificaton on your phone :)<br>
6: Restart dnsmasq:<br>
`/etc/init.d/dnsmasq reload`<br>
(if this fails `/etc/init.d/dnsmasq restart`)<br>
7: Now you should get a lot of noifications on your phone for every device thats conneted :><br>

8: If you see me, please give me a beer or stuff like this ;D
