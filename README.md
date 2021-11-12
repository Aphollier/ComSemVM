# ComSem VM
Virtual Machine Development Environment for Communication Seminar Project

## Prerequisites 
Vagrant - https://www.vagrantup.com/downloads

VirtualBox - https://www.virtualbox.org/wiki/Downloads

You will want to make sure VBoxManage is included in your path

Windows: In cmd type the command 

```
set PATH=%PATH%;"C:\Program Files\Oracle\VirtualBox"
```
If your VirtualBox path is different change the location accordingly

## Installation
1. Download the repo
2. Extract the files into their own folder
3. Boot a terminal or cmd and navigate to the folder
4. Begin installing the VM using the command ```vagrant up```
5. The VM will open shortly afterwards, wait for the install to finish completely within the terminal before logging in
6. After installed you can access it directly from VirtualBox instead of vagrant, The password for the account is **vagrant**

## Troubleshooting
### Hyper V service
Windows Hyper V server may stop the install from working, this can be fixed by stopping Hyper V Services
1. In an administrator cmd type the command 
```
bcdedit /set hypervisorlaunchtype off
```
2. Restart your machine
3. try ```vagrant up``` again
If you receive "The integer data is not valid as specified", try

```
bcdedit /set hypervisorlaunchtype auto
```
