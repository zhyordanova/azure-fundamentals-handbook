# Subnets

## Definition

A subnet is a range of IP addresses within an Azure Virtual Network. Subnets divide a VNet address space into smaller network segments.

## What Problem Does It Solve?

Subnets let an organization separate workloads inside the same VNet. For example, web, application, and database resources can be placed in different subnets while remaining part of one virtual network.

## Key Characteristics

- Exists inside a VNet
- Uses a portion of the VNet address space
- Provides network segmentation
- Can be associated with networking and security features such as NSGs

## Decision Factors

Choose a subnet when the requirement is to **segment an existing VNet** or allocate different IP ranges to different workload tiers.

A subnet does not itself define allow/deny rules. If the requirement is traffic filtering, use an **NSG**.

## Best-Fit Scenarios

- Separate web, application, and database tiers
- Allocate a dedicated network segment to a workload
- Organize resources inside one VNet

## Compare With

| VNet | Subnet | NSG |
|---|---|---|
| Private network boundary | Segment inside the VNet | Traffic filtering rules |
| Defines overall address space | Uses part of that address space | Allows or denies traffic |

## Trade-offs

More segmentation can improve organization and isolation, but it also adds network design and management complexity. For AZ-900, focus on the purpose: **VNet = network, Subnet = segment**.

## Common Mistakes

❌ Choosing NSG when the question asks for a smaller IP range.

❌ Treating a subnet as a separate VNet.

## Microsoft Trigger Words

- smaller IP range
- segment a VNet
- network segment
- part of a VNet address space

## Exam Reasoning

If the scenario says:

> Divide one Azure Virtual Network into smaller IP ranges for different workloads.

→ **Subnet**
