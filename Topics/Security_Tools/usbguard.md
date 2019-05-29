# USBGuard Software Framework

## Install and Configure USBGuard with Basic Settings

Install USBGuard
> yum install -y usbguard

Start the USBGuard service, and make sure it's running
> systemctl start usbguard.service
> systemctl enable usbguard.service
> systemctl status usbguard.service

Generate a base policy for USBGuard
> usbguard generate-policy > /etc/usbguard/rules.conf

Restart the USBGuard service after creating the base policy
> systemctl restart usbguard.service

Enable the USBGuard service to start at boot
> systemctl enable usbguard.service

Configure USBGuard Permissions and Create a group named USBGuard-Users
> groupadd USBGuard-Users

Add cloud_user to the USBGuard-Users group
> usermod -a -G USBGuard-Users cloud_user

Verify group membership:
> cat /etc/group | grep USBGuard-Users

Update USBGuard to permit the USBGuard-Users group to make changes to USBGuard
> nano /etc/usbguard/usbguard-daemon.conf

We're using the Nano editor here. Press Ctrl+w and search for IPCAllowedGroups. Add USBGuard-Users so that the line reads:

``` /etc/usbguard/usbguard-daemon.conf
IPCAllowedGroups=USBGuard-Users
```

Press Ctrl+x to quit, and answer Y at the prompt to save.

Restart the USBGuard service and check the status
> systemctl restart usbguard.service
> systemctl status usbguard.service

Resources:

USBGuard software framework
https://usbguard.github.io/