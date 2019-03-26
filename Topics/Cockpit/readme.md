# Cockpit
https://access.redhat.com/documentation/en-us/red_hat_enterprise_linux/7/html-single/getting_started_with_cockpit/index


Package and Functions:

cockpit-bridge.x86_64 : Cockpit bridge server-side component
cockpit-dashboard.x86_64 : Cockpit remote servers and dashboard
cockpit-doc.x86_64 : Cockpit deployment and developer guide
cockpit-docker.x86_64 : Cockpit user interface for Docker containers
cockpit-kdump.noarch : Cockpit user interface for kernel crash dumping
cockpit-kubernetes.x86_64 : Cockpit user interface for Kubernetes cluster
cockpit-machines.x86_64 : Cockpit user interface for virtual machines
cockpit-machines-ovirt.noarch : Cockpit user interface for oVirt virtual machines
cockpit-networkmanager.noarch : Cockpit user interface for networking, using NetworkManager
cockpit-packagekit.x86_64 : Cockpit user interface for package updates
cockpit-pcp.x86_64 : Cockpit PCP integration
cockpit-selinux.noarch : Cockpit SELinux package
cockpit-sosreport.noarch : Cockpit user interface for diagnostic reports
cockpit-storaged.noarch : Cockpit user interface for storage, using udisks
cockpit-subscriptions.noarch : Cockpit subscription user interface package
cockpit-system.noarch : Cockpit admin interface package for configuring and troubleshooting a system
cockpit-tests.x86_64 : Tests for Cockpit
cockpit-ws.i686 : Cockpit Web Service
cockpit-ws.x86_64 : Cockpit Web Service
subscription-manager-cockpit.noarch : Subscription Manager Cockpit UI
cockpit.x86_64 : A user interface for Linux servers

## Privileges and Permissions
Cockpit can use the user's login password internally to escalate privileges in these situations. By selecting the Reuse my password for privileged tasks option on the login screen the login password will be cached internally and passed to Policy Kit when requested in order to escalate privileges.
https://cockpit-project.org/guide/latest/privileges
