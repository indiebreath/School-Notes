## Common Values
ip 192.168.10.1

## Interface Config
int g0/0/0
ip add 100.1.1.1 255.255.255.0
no shut
exit

## VLAN Implementation
vlan 50
name Year12
exit
vlan 40
name Year11
exit
vlan 10
name Mgt

## Trunking
int range f0/1-2
switchport mode trunk
switchport trunk encapsulation dot1q
// if multilayer switch ^

## Assigning IP Addresses to VLAN
int vlan 10
ip add 192.168.10.1 255.255.255.0

## Router IVR Configuration
int g0/0/0
no ip add
no shut
exit
int g0/0/0.10
encapsulation dot1q 10
ip add 192.168.10.254
exit
int g0/0/0.50
encapsulation dot1q 50
ip add 192.168.50.1 255.255.255.0
exit
int g0/0/0.40
ip add 192.168.40.1 255.255.255.0
encapsulation dot1q 40

## VLAN Ports Switch
int range f0/23-24
switchport mode access
switchport access vlan 10
switchport nonegotiate
exit
int range f0/23-24
switchport mode access
switchport access vlan 10
switchport nonegotiate

int g0/2
switchport mode access
no switchport access vlan 10

## Port Security
int range f0/5-9
switchport port-security maximum 2
switchport port-security mac-address sticky
switchport port-security violation restrict

## FTP
ip ftp username cisco
ip ftp password cisco

## Loopback
int Loopback 500
no ip add
shut

## Serial
int s0/1/0
ip add 200.165.100.105 255.255.255.252
clock rate 2000000
exit

## OSPF
router ospf 1
log-adjacency-changes
network 0.0.0.0 255.255.255.255 area 0
default-information originate
