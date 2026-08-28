# Virtual Network Peering

## Definition

Virtual Network Peering connects Azure Virtual Networks privately over the Microsoft backbone network.

## What Problem Does It Solve?

Organizations often separate workloads into different VNets but still need private Azure-to-Azure communication. Peering provides direct VNet connectivity without requiring a VPN tunnel.

## Key Characteristics

- Private VNet-to-VNet communication
- Microsoft backbone network
- Low-latency connectivity
- Same-region or cross-region peering options
- No VPN tunnel required
- Peering is not transitive by default

## Decision Factors

Choose VNet Peering when the main requirement is **private connectivity between Azure VNets**.

If the scenario is about on-premises connectivity, evaluate **VPN Gateway** and **ExpressRoute** instead.

## Best-Fit Scenarios

- Connect application tiers placed in different VNets
- Connect hub and spoke VNets
- Connect separate Azure environments that need direct private communication

## Compare With

| VNet Peering | VPN Gateway | ExpressRoute |
|---|---|---|
| Azure VNet ↔ Azure VNet | On-premises / clients ↔ Azure using VPN | On-premises ↔ Microsoft cloud using private connectivity |
| Microsoft backbone | Encrypted tunnel | Private connectivity provider path |
| No VPN tunnel required | Public Internet can carry VPN traffic | Does not traverse public Internet |

## Trade-offs

Peering is direct and efficient for Azure VNet connectivity, but separate peering relationships or additional routing design may be required in larger topologies.

## Common Mistakes

❌ Choosing VPN Gateway merely because two networks need to communicate.

First identify **where the networks are located**.

## Microsoft Trigger Words

- two Azure VNets
- VNet-to-VNet private communication
- Microsoft backbone
- peering

## Exam Reasoning

Object first:

> Azure VNet ↔ Azure VNet

Then choose the simplest direct Azure networking option that satisfies the requirement:

→ **Virtual Network Peering**
