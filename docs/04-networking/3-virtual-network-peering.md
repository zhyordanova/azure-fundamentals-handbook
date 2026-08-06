# Virtual Network Peering

## Definition

Virtual Network (VNet) Peering is an Azure networking feature that enables two or more Azure Virtual Networks to communicate privately over the Microsoft backbone network.

Peered virtual networks behave as if they are part of the same network while remaining separate resources.

## Why Virtual Network Peering Exists

Organizations often deploy applications across multiple Virtual Networks.

Examples include:

- Production and Development environments
- Different departments
- Applications deployed in separate Virtual Networks
- Resources managed by different teams

Without Virtual Network Peering, these Virtual Networks cannot communicate privately with each other.

Peering provides secure, low-latency communication without requiring traffic to traverse the public Internet.

## Characteristics

Virtual Network Peering provides:

- Private communication between Azure Virtual Networks
- Low network latency
- High bandwidth
- Communication over the Microsoft backbone network
- No need for VPN Gateway for Azure-to-Azure connectivity

Peering can connect Virtual Networks within the same Azure Region or across different Azure Regions (Global VNet Peering).

## Typical Use Cases

Virtual Network Peering is commonly used for:

- Connecting application tiers located in different VNets
- Connecting Production and Development environments
- Sharing central networking services
- Building hub-and-spoke network architectures

## Microsoft Trigger Words

If a question contains words such as:

- two Azure Virtual Networks
- communicate privately
- Microsoft backbone
- connect VNets
- Azure-to-Azure networking

Think:

> Virtual Network Peering

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service connects two Azure Virtual Networks?
- Which Azure networking feature provides private communication between VNets?
- Which Azure service uses the Microsoft backbone network?

## Common Mistakes

❌ Thinking VPN Gateway is required for Azure Virtual Network to Azure Virtual Network communication.

VPN Gateway is primarily used for:

- On-premises ↔ Azure
- Point-to-Site VPN
- Site-to-Site VPN

Virtual Network Peering is designed specifically for Azure-to-Azure connectivity.

❌ Thinking Network Security Groups connect Virtual Networks.

NSGs filter network traffic.

They do not create connectivity.

## Compare With

| Virtual Network Peering | VPN Gateway |
|--------------------------|-------------|
| Azure-to-Azure connectivity | Azure-to-On-premises connectivity |
| Microsoft backbone network | Encrypted tunnel over the Internet |
| Low latency | Internet-based communication |
| No VPN required | VPN connection required |

## Exam Tip

Microsoft frequently uses wording such as:

- two Azure Virtual Networks
- communicate privately
- Microsoft backbone
- connect VNets

These phrases almost always indicate:

> **Virtual Network Peering**

If the question mentions **on-premises**, the answer is usually **VPN Gateway** or **ExpressRoute**, not Virtual Network Peering.