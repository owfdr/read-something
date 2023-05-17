# Networking All-in-One For Dummies

## Book 1: Getting Started with Networking

### Chapter 1 Welcome to Networking

- WAP
- node
- sneakernet
- network interface
- hub / switch
- MAN

### Chapter 2 Network Infrastructure

- patch panel
- protocol
- OSI model
- Ethernet
- topology
- bus
- party line
- star
- backbone
- daisy-chaining
- ring
- ARCNET
- token ring
- FDDI
- mesh
- twisted-pair
- RJ45
- repeater
- port | interface | adapter
- physical address | MAC address
- packet
- preamble
- frame
- FCS
- collision
- broadcast
- DHCP

### Chapter 3 Switches, Routers, and VLANs

- shared media
- MAC address table | forwarding database
- learning
- forwarding
- flooding
- collision domain
- bridge
- SFP port
- uplink
- broadcast packet
- broadcast domain
- ARP
- NAT
- VPN
- VLAN
- subnet
- access port
- trunk port

### Chapter 4 Cybersecurity

- 2 pillar
- prevention
- recovery
- data-in-flight | data-at-rest
- framework
- NAS
- NIST
- ISO/IEC 27001
- ISA 62443
- CIS-20
- COBIT (ISACA)

### Chapter 5 Servers and Virtualization

```text
May 5, 2023     Log
67  4:29
68  4:30
69  4:33
70  4:38
71  4:42
72  4:46
73  4:48
74  4:56    Research
75  5:13
76  5:20    Exercise
77  5:34
```

- services
- DHCP
- DNS
- file system
- multitasking
- multiprocessing
- clock speed
- hyperthreading
- SATA
- SAS
- PCIe
- 10 Gbps
- form factor
- tower case | rack mount | blade
- KVM switch
- virtualization

### Chapter 6 Cloud Computing

```text
May 5, 2023     Log
79  5:46
80  5:47
81  5:49
82  5:52
83  5:54
84  5:57
85  6:00
86  6:01
87  6:04
88  6:05
```

- application | platform | infrastructure
- SaaS | PaaS | IaaS
- CloudFront
- EC2
- S3
- SQS

## Book 2: Understanding Network Protocols

### Chapter 1 Network Protocols and Standards

```text
May 5, 2023     Log
91  6:11
92  6:12
93  6:14
94  6:19
95  6:23
96  6:26
97  6:30
98  6:37
99  6:46
100 6:48
101 6:51    Research
102 7:15    Research
103 7:26    Research
104 7:37
105 7:42
106 7:45
107 7:48
108 8:00
--- 8:01
109
```

- protocol
- layers
- suite
- standard
- ANSI
- IEEE
- ISO
- IETF
- W3C
- OSI model
- lower layer | upper layer

Layer 1 (Physical)

- 1 and 0
- hub | multiport repeater
- adapter | NIC

Layer 2 (Data Link)

- MAC address | physical address
- CSMA/CD (Ethernet)
- 30
- collision domain
- bridge
- switch
- VLAN
- ARP

Layer 3 (Network)

- IP | IPX
- logical address
- routing
- network address
- device address | host address
- routable

Layer 4 (Transport)

- divide
- TCP (connection-oriented)
- UDP (connectionless)
- netstat

Layer 5 (Session)

- establish
- conversation | session
- simplex
- half-duplex
- full-duplex

Layer 6 (Presentation)

- ASCII
- UTF-8
- conversion
- compression
- encryption

Layer 7 (Application)

- DNS
- FTP
- SMTP
- SMB
- NFS
- Telnet

Ethernet

- ethernet protocol
- 802.3 IEEE
- mix and match
- Mbps
- Gbps
- LLC
- MAC

TCP/IP

```text
May 5, 2023     Log
109 14:48
110 14:50
111 14:59   Research
112 15:09
113 15:11
--  15:13
```

- suite
- IETF
- IP
- logical address
- UDP
- DNS
- NetBIOS
- NetBEUI
- IPX/SPX
- AppleTalk
- SNA

### Chapter 2 TCP/IP and the Internet

```text
May 5, 2023     Log
115 15:14
116 15:18
117 15:20
118 15:25
119 15:30
120 15:36
121 15:37
122 15:45
--  15:47
```

- RFC 1149
- IP (3)
- ARP (2)
- ICMP (3)
- IGMP (2)

### Chapter 3 IP Addresses

```text
May 5, 2023     Log
123 15:54
124 15:56
125 16:12
126 16:20
127 16:22
128 16:28   Research
129 16:55   Research
130 17:31
131 17:31
132 17:49   Research
133 18:11
--- 18:12
134 19:07
135 19:09
136 19:11
137 19:17
138 19:22
139 19:44   Research
--- 20:21
140 22:40
141 22:50
142 23:40   Research
143 1:21
144 2:57
--- 3:01
```

- XOR
- calculator
- network address
- host address
- 0 | 255
- dotted decimal notation
- w,x,y,z
- IPv6
- 128 bits
- IP address classes(A-E)
- multicast address
- loop-back address (127)
- IANA
- subnet
- logical AND
- always 255
- network prefix
- CIDR
- default subnet mask
- max bit 30
- VLAN (layer 2)
- subnets (layer 3)
- one-to-one
- VoIP
- 0,128,192,224,240,248,252,254,255
- public address
- private address
- 10.0.0.0/8
- 172.16.0.0/12
- 192.168.0.0/16
- port
- internet socket
- 16 bit
- NAT
- firewall
- ephemeral port

### Chapter 4 Routing

```text
May 6, 2023     Log
145 3:02
146 3:03
147 3:10
148 3:15
149 3:19
150 3:23
151 3:25
152 3:30
153 3:33
--- 3:35
```

- internet gateway
- residential gateway
- cable modem
- ethernet handoff
- demarcation point
- VPN
- tunnel
- internal router
- routing table
- static route
- dynamic routes
- routing protocols

### Chapter 5 DHCP

```text
May 6, 2023     Log
155 3:36
156 3:37
157 3:39
158 3:46
159 3:50
160 3:52
161 3:56
162 3:58
163 4:00
164 4:01
165 4:02
166 4:03
167 4:04
168 4:05
169 4:06
170 4:07
171 4:08
172 4:09
--- 4:10
```

- 0.0.0.0
- discover message
- offer message
- request message
- ack message
- scope
- lease duration
- VLAN
- DHCP relay| IP Helper
- exclusion
- DHCP reservation
- BootP
- diskless workstation
- 8 day
- APIPA (169.254.x.x)
- release
- renew
