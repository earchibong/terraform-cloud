# Additional Tasks For Project 16

<br>

**Summarise your understanding on Networking concepts like IP Address, Subnets, CIDR Notation, IP Routing, Internet Gateways, NAT**

<br>

## IP Addresses
- An IP address is a unique address that is used to identify devices on the internet or a local network. 
- IP stands for "Internet Protocol," which is the set of guidelines that govern how data is sent via the internet or local network.
- In short, an IP address has the important function of figuring out not only the address of "things," on the internet or local network, but how communication can occur between them

<br>

- There are two kinds of IP Addresses are `IPv4` and `IPv6`.
    - IPv4 uses 32 binary bits to create a single unique IP address on the network
    - It is addressed by 4 numbers separated by dots: 174.1.34.45
    - IPv6 uses 128 bunary bits to create a unique address on the network
    - It is addressed by 8 groups of hexadecimal numbers separated by colons:  2001:0DB8:AC10:FE01

<br>

- A device can get a `static` or `dynamic` IP address
    - A `static` IP address is on that you configure yourself by editing the computer's network settings
    - A `dynamic` IP address is more common and are assigned by a service on the network - the Dynamic Host Configuration Protocol(DHCP)

<br>

- Every IP address has two parts. The first part indicates which **network the address belongs to**. The second part specifies the **host (device) within that network.** However, the length of the "first part" changes depending on the network's class.



## Subnets
- It is not enough to just have an address of things on the internet or local network. It is necessary to figure out how a message can be sent from one address to another. This is where subnets come in.

- It is often necessary to group things together on a network for both organizational and efficiency’s sake

- A subnet then, is a **logical organization of connected network devices.**

- Each device on each subnet has an address that logically associates it with the others on the same subnet. This also prevents devices on one subnet from getting confused with hosts (devices) on the other subnet.

- To subnet a network is to create logical divisions of the network.
- Subnetting therefore involves dividing the network into smaller subnets
- A subnet can therefore be seen as a network inside a network

<br>

- Subnetting applies to IP addresses because this is done by borrowing bits from the host portion of the IP address.

- We create a subnet by logically grabbing the last bit from the network component of the IP address and use it to determine the number of subnets required. 
    - a subnet mask indicate how many bits are being “borrowed” from the host component of an IP address
    - In other words, it shows how many subnets we want to have on our network

<br>

- subnets in general, make networks more efficient. 
- Through subnetting, network traffic can travel a shorter distance without passing through unnecessary routers to reach its destination.
- When a network receives data packets from another network, it will sort and route those packets by subnet so that the packets do not take an inefficient route to their destination. This prevents frequent traffic problems that can occur in the network channel and in turn creates a smooth transition of information in the network.
- subnets can individually be configured to a users requirements

<br>

- Main advantages of subnets include:
    - prevents wastage of IP addresses
    - allows better communication between each subnet in the network
    - increased security: Subnetting makes it easier in establishing security units over the network channel to avoid data breaches.
    - Sub-network: The most basic reason to apply subnetting is that it efficiently distributes an IP address into smaller subunits, according to the need of the network.

<br>

- drawbacks of subnetting:
    - complex connections: as the number of subnets increases, the complexity work increases making it more difficult to track errors
    - unused IP addresses
    - hardware requirement

<br>

## CIDR Notations

- CIDR: Classless Internet Domain Routing
- Used to represent IP addresses
- an IP addressing scheme that improves the allocation of IP addresses.
- It replaces the old system based on IP Address classes A, B, and C.
- This scheme also helped greatly extend the life of IPv4 as well as slow the growth of routing tables.

<br>

- The idea behind CIDR is to adapt the concept of subnetting to the entire Internet
- basically, `classless addressing` means that instead of breaking a particular network into subnets, we can aggregate networks into larger `supernets`.
- CIDR is therefore often referred to as `supernetting`, where the principles of subnetting are applied to larger networks

<br>

- CIDR IP addresses are composed of two sets of numbers. The network address is written as a prefix, like you would see a normal IP address (e.g. 192.255.255.255). The second part is the suffix which indicates how many bits are in the entire address (e.g. /12). 

- Putting it together, a CIDR IP address would use the `network/mask` format and look like the following: `192.255.255.255/12`

- The network prefix is also specified as the part of the IP address. This varies depending upon the number of bits required. Therefore, taking the example above, we can say that the first 12 bits are the network part of the address while the last 20 bits are for host addresses.

<br>

- CIDR became so popular because it’s a much more efficient allocator of the IP address space. 
    - CIDR is based on `variable-length subnet masking (VLSM).`
    - This allows it to define prefixes of arbitrary lengths making it much more efficient than the old system.
- Using CIDR, a network admin can carve out a number of host addresses that’s closer to what is required than with the class approach.

<br>

## IP Routing


- Network routing is the process of selecting a path across one or more networks.
- WIth IP routing: this is where the router selects the paths for Internet Protocol (IP) packets to travel from their origin to their destination.
    - The Internet Protocol (IP) specifies the origin and destination for each data packet. Routers inspect each packet's IP header to identify where to send them.

<br>

- Internet routing decisions are made by specialized pieces of network hardware called `routers.`
- Routers use to internal routing tables to make decisions about how to route packets along network paths
- A routing table records the paths that packets should take to reach every destination that the router is responsible for

<br>

- Routers work in the following way: 
    - when a router receives a packet, it reads the headers of the packet to see its intended destination, like the way a train conductor may check a passenger's tickets to determine which train they should go on...
    - It then determines where to route the packet based on information in its routing tables.

<br>

## Internet Gateways
- An Internet gateway is used to allow resources in a VPC access to the internet
- It is used to connect two different networks that use different protocols for communicating
- In the most basic terms, an Internet gateway is where data stops on its way to or from other networks

<br>

- Gateways can take several different forms from hardware to software - including routers and computers - and can perform a variety of tasks.

- For Internet connections at home, the Internet gateway is usually the Internet Service Provider (ISP), who, in this case, offers access to the entire Internet through its own network. 
    - With Wi-Fi connection at home, the Internet gateway is usually the modem or modem/router combination that the ISP provides to allow connection to the Internet through their network.

- If the Internet gateway is a computer server, it acts as a firewall and a proxy server. 
    - A `firewall` keeps unwanted traffic and outside computers out of a private network. 
    - A `proxy server` makes sure that the actual server can handle the online data requests.

<br>

## NAT
- Network Address Translation
- used to map multiple local private addresses to a public one before transferring the information.
- Organizations that want multiple devices to use a single IP address use NAT, as do most home routers.

<br>

- **Types Of NAT**:
    - 

<br>

**Summarise your understanding of the OSI Model, TCP/IP suite and how they are connected – research beyond the provided articles, watch different YouTube videos to fully understand the concept around OSI and how it is related to the Internet and end-to-end Web Solutions. You don not need to memorise the layers – just understand the idea around it.**

## OSI Model
- Open Systems Interconnet Model
- Conceptual framework that describes networking or telecommunications as 7 layers and each with its own function
- layers help:
    -  network professionals visualize what is going on in the network and narrow down problems that may occur, 
    - programmers: when developing an application, which other layers does it need to work with?)
    - Tech vendors:  selling new products will often refer to the OSI model to help customers understand which layer their products work with or whether it works “across the stack”.

<br>

- 7 layers are:
    - Layer 7 / Application: 
      - closest to the end user
      - gets input / information directly from users
      - displays data to users
      - facilitates communications through lower layers to establish connections with applications at layer 1
      - examples: Web browsers, FTP
      - troubleshoot layer 7 problems:
        - Incorrectly configured software applications
        - User error 
        - all issues on other layers

    <br>

    - Layer 6 / Presentation:
      - independent of data at application layer
      - translates application format to network format or vice versa
      - "presents" data for the application or network
      - example: encryption or decryption of data for secure transmission
      - trouble-shoot problems n layer 6:
        - Non-existent or corrupted drivers
        - Incorrect OS user access level

    <br>

    - Layer 5 / Session:
      - establishes, maintains, and terminates sessions.
      - helps devices in a network speak to each other
      - when networked devices need to speak to each other, a session needs to be created; this is where it happens
      - functions of the layer include setup, coordination (how long should a system wait for a response, for example) and termination between the applications at each end of the session.
      - troubleshoot layer 5 problems:
        - Servers are unavailable
        - Servers are incorrectly configured, for example Apache or PHP configs
        - Session failure - disconnect, timeout, and so on.

    <br>

    - Layer 4 / Transport:
      - deals with the coordination of the data transfer between end systems and hosts. 
      - How much data to send, at what rate, where it goes, etc
      - examples: TCP (Transmission Control Protocol) which is built on top of the Internet Protocol (IP); TCP/IP
      - TCP and UDP port numbers work at Layer 4
      - troubleshoot problemsin this layer:
        - all problems that crop up in layers 1-3
        - blocked ports- check Access Control Lists (ACL) & firewalls
        - Quality of Service (QoS) settings. QoS is a feature of routers/switches that can prioritize traffic

    <br>

    - Layer 3 / Network:
      - where you can send information between and across networks through the use of routers
      - Instead of just node-to-node communication, we can now do network-to-network communication.
      - basically The Network Layer allows nodes to connect to the Internet and send information across different networks.
      - Deals with router functionality
      - responsible for packet forwarding, including routing through different routers
      - troubleshoot problems in this layer:
        - all problems that crop up in layer 1 and 2
        - Faulty or non-functional router or other node
        - IP address is incorrectly configured
        - Many answers to Layer 3 questions will require the use of command-line tools like ping, trace, show ip route, or show ip protocols
    <br>

    - Layer 2 / Data:
      - defines how data is formatted for transmission, how much data can flow between nodes, for how long, and what to do when errors are detected in this flow.
      - provides node-to-node data transfer 
      - corrects errors from the physical layer
      - Two sublayers exist here:
        - Media Access Control (MAC) layer
        -  Logical Link Control (LLC) layer
      - most switches operate at Layer 2
      - note: Some switches also operate at Layer 3 when routing capabilities are required for support. e.g: Virtual LANs
      - trouble shoot problems in this layer:
        - Unsuccessful connections (sessions) between two nodes
        - Sessions that are successfully established but intermittently fail
        - Frame collisions

    <br>

    - Layer 1 / Physical:
      - contains the infrastructure that makes communication on networks possible.
      - represents the electrical and physical representation of the system
      - includes everything from the hardware and devices, cable type, radio frequency link (as in a Wi-Fi network), as well as the layout of pins, voltages, and other physical requirements
      - troubleshoot layer 1 problems by checking for defunct and broken devices and stuff being unplugged


<br>

## TCP/IP Suite

- Transmission Control Protocol/Internet Protocol
- set of standardized rules that allow computers to communicate on a network such as the internet.
- based on a four-layer model of networking that is similar to the seven-layer open systems interconnection (OSI) model
- 4 Layers of TCP/IP:
    - Application
    - Transport
    - Network
    - Network Interface

- OSI and TCP/IP can be said to match up in the following way:
    - TCP/ Application Layer:
       - OSI / Application Layer
       - OSI/ Presentation Layer
       - OSI/ Session Layer
       - TCP/IP protocols:
         - HTTP
         - FTP
         - DNS
         - SMTP
         - Telnet
    
    <br>

    - TCP / Trasnport Layer:
        - OSI / Transport Layer
        - TCP/IP protocols:
          - TCP
          - UDP

    <br>

    - TCP / Network Layer:
       - OSI / Network Layer
       - TCP/ IP Protocol:
          - IP

    <br>

    - TCP / Network Interface Layer:
       - OSI / Data Layer
       - OSI / Physical Layer
       - TCP/IP Protocols:
          - Ethernet
          - Token Ring
          - Other Link Layer Products


**Explain the difference between `assume role policy` and `role policy`**

- `role policy`: A policy is an object in AWS that, when associated with an identity or resource, defines their permissions. A `role policy` is therefore a policy that is attached to a role that defines access available to AWS resources for that role.

- `assume role policy`: creates a set of temporary security credentials that you can use to access AWS resources that you might not normally have access to. It allows you to assume a different role and access policies attached to the role you assume.