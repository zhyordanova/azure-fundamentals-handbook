# Network Security Groups (NSG)

## Definition

A Network Security Group (NSG) filters inbound and outbound network traffic by using security rules.

Rules can evaluate characteristics such as source, destination, port, protocol, and direction, and then allow or deny the traffic.

## What Problem Does It Solve?

An NSG controls which traffic is permitted after network connectivity exists. It reduces unnecessary network exposure without creating the network connection itself.

## Key Characteristics

- Inbound and outbound traffic filtering
- Allow and deny rules
- Can be associated with subnets or network interfaces
- Stateful traffic filtering
- Rules are processed by priority

## Decision Factors

Choose an NSG when the requirement is to control **traffic**, not to create **connectivity**.

Typical questions involve:

- allowing HTTPS
- restricting RDP or SSH
- blocking a port
- limiting communication between application tiers

## Best-Fit Scenarios

- Allow TCP 443 to a workload
- Deny unwanted inbound traffic
- Restrict traffic to a subnet
- Control communication to a VM network interface

## Compare With

| Requirement | Best Fit |
|---|---|
| Create private network | VNet |
| Segment network | Subnet |
| Filter traffic | **NSG** |
| Connect networks | Peering / VPN Gateway / ExpressRoute |

## Trade-offs

NSGs provide network-level filtering with relatively simple rules, but they do not establish VPNs, connect VNets, or replace a VNet.

## Common Mistakes

❌ Choosing NSG to connect two networks.

❌ Choosing NSG to create a private network.

## Microsoft Trigger Words

- allow traffic
- deny traffic
- inbound / outbound
- port
- protocol
- security rule

## Exam Reasoning

Ask:

> Does connectivity already exist, and do I only need to control what traffic is allowed?

If yes → **NSG**.
