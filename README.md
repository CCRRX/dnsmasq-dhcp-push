# dnsmasq-dhcp-push
Get a push notification when a DHCP release is created or deleted.

1: Install the Pushover app on your phone (Yes its a 7 day trail, but only ~5$ ...  - YOU know a better free app? Please tell it to me!)
2: edit the dnsmasq config 
if youre running a classic dnsmasq, edit /etc/dnsmasq.conf and add this line:
dhcp-script=/var/dnsmasq/push.sh
if youre running a OpenWRT Router, login via SSH and edit the /etc/config/dhcp and add under the "config dnsmasq" line this
option dhcp-script '/var/dnsmasq/push.sh'
3: uploade the script and dont forget to fill in our keys
vi /var/dnsmasq/push.sh
(maybe you need to create the folder dnsmasq at var!)
4: make it executable
chmod +x /var/dnsmasq/push.sh
5: test it
/var/dnsmasq/push.sh
now you should see a notificaton on your phone :)
6: restart dnsmasq
/etc/init.d/dnsmasq reload
(if this fails /etc/init.d/dnsmasq restart)
7: now you should get a lot of noifications on your phone for every device thats conneted :>
