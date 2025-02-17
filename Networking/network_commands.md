# Networking Journal

## Snippets

### Interface Config

int g0/0/0
ip add 100.1.1.1 255.255.255.0
description Interface
no shut
exit

### Serial Config

int s0/0/0
ip address 100.1.1.1 255.255.255.252
description Interface
clock rate 2000000
no shut
exit

### VLAN Implementation

vlan 50
name VLAN
exit

### Trunking

int range f0/1-2
switchport mode trunk
! if multilayer switch V
switchport trunk encapsulation dot1q

### Assigning IP Addresses to VLAN

int vlan 10
ip add 192.168.10.1 255.255.255.0

### Router IVR Configuration

int g0/0/0
no ip add
no shut
exit
int g0/0/0.10
encapsulation dot1q 10
ip add 192.168.10.254
exit

### VLAN Ports Switch

int range f0/23-24
switchport mode access
switchport access vlan 10
switchport nonegotiate
exit

### Port Security

int range f0/5-9
switchport port-security maximum 2
switchport port-security mac-address sticky
switchport port-security violation restrict

### FTP

ip ftp username cisco
ip ftp password cisco

### Loopback

int Loopback 500
no ip add
shut

### OSPF

router ospf 1
log-adjacency-changes
network 0.0.0.0 255.255.255.255 area 0
default-information originate

## Scripts

### Router Setup

en
conf t
hostname Router
service password-encryption
enable password cisco
banner motd $ Unauthorised Access Strictly Prohibited $
no ip domain-lookup
line vty 0 4
password cisco
login
logging synchronous
end
copy run start
conf t
