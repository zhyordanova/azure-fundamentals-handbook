# Network Security Groups (NSG)

## Definition

A Network Security Group (NSG) is an Azure networking service that filters inbound and outbound network traffic for Azure resources.

An NSG uses security rules to allow or deny traffic based on:

- Source
- Destination
- Port
- Protocol
- Direction (Inbound or Outbound)

## Why Network Security Groups Exist

Creating a Virtual Network allows Azure resources to communicate.

However, not every resource should be accessible from every location.

Network Security Groups provide an additional layer of security by controlling which network traffic is allowed and which traffic is blocked.

## Characteristics

A Network Security Group provides:

- Inbound traffic filtering
- Outbound traffic filtering
- Rule-based access control
- Support for multiple protocols (TCP, UDP, ICMP)
- Stateful packet filtering

An NSG does **not** create network connectivity.

It only controls traffic that is already attempting to use the network.

## Where Can an NSG Be Applied?

A Network Security Group can be associated with:

- A subnet
- A network interface (NIC)

This allows security rules to be applied at different levels.

## Rule Processing

Each NSG contains a collection of security rules.

Each rule specifies:

- Priority
- Source
- Destination
- Port
- Protocol
- Action (Allow or Deny)

Rules are evaluated by priority, starting with the lowest number.

The first matching rule is applied.

## Typical Use Cases

Network Security Groups are commonly used for:

- Allowing RDP only from corporate IP addresses
- Allowing HTTP and HTTPS traffic
- Blocking unnecessary ports
- Restricting communication between application tiers
- Securing Virtual Machines

## Microsoft Trigger Words

If a question contains words such as:

- allow traffic
- deny traffic
- inbound rules
- outbound rules
- filter traffic
- network rules
- security rules

Think:

> Network Security Group (NSG)

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service filters network traffic?
- Which Azure service allows or denies inbound traffic?
- Which Azure service secures Virtual Machines at the network level?
- Which Azure service uses security rules?

## Common Mistakes

❌ Thinking an NSG connects networks.

Network Security Groups **do not provide connectivity**.

They only filter network traffic.

❌ Thinking an NSG replaces a Virtual Network.

A Virtual Network provides connectivity.

An NSG secures that connectivity.

---

❌ Thinking an NSG creates VPN connections.

VPN Gateway and ExpressRoute provide connectivity.

NSGs control traffic after connectivity exists.

## Compare With

| Network Security Group | Azure Virtual Network |
|-------------------------|----------------------|
| Filters traffic | Provides connectivity |
| Uses security rules | Provides private networking |
| Allows or denies traffic | Enables communication |

## Exam Tip

Microsoft often includes phrases such as:

- allow or deny traffic
- inbound rules
- outbound rules
- security rules

These phrases almost always indicate:

> **Network Security Group (NSG)**

If the question asks how two networks communicate, the correct answer is **not** NSG.

Instead, think about:

- Virtual Network Peering
- VPN Gateway
- ExpressRoute