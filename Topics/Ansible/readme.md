# Configuring Ansible on Linux and Window Machines


## Setting up a Windows Host

### Host Requirements
- Ansible’s supported Windows versions generally match those under current and extended support from Microsoft. Supported desktop OSs include Windows 7, 8.1, and 10, and supported server OSs are Windows Server 2008, 2008 R2, 2012, 2012 R2, and 2016.
- Ansible requires PowerShell 3.0 or newer and at least .NET 4.0 to be installed on the Windows host.
- A WinRM listener should be created and activated. More details for this can be found below.

Scripts for WinRM can be found @:
https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html#http-401-credentials-rejected

Kerberos
https://docs.ansible.com/ansible/latest/user_guide/windows_winrm.html#authentication-options
