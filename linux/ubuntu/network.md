## Basic cli for wifi

```
nmcli d
nmcli r wifi on
nmcli d wifi list
```

## terminal gui network manager

```
nmtui
```

## Show logs

```
journalctl -u NetworkManager.service
```

## netplan

use netplan to apply config

```
sudo netplan apply filename.yaml
```

files are in /etc/netplan


## netplan examples 

https://github.com/canonical/netplan/tree/main/examples
