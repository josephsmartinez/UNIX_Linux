# Ubuntu 18 and Virtual Box Development

### Fixing the clipboard sharing
Execute the below commands:
sudo apt-get update
sudo apt-get install virtualbox-guest-x11

If it asks you about keeping a file or installing the new one, select the new one.

sudo VBoxClient --clipboard

This should enable clipboard sharing. Make sure that Clipboard Sharing is set to Bidirectional under VM Settings.

https://superuser.com/questions/1318231/why-doesnt-clipboard-sharing-work-with-ubuntu-18-04-lts-inside-virtualbox-5-1-2
