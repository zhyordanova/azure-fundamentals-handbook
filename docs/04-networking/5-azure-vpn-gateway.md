# Azure VPN Gateway

## Definition

Azure VPN Gateway provides encrypted connectivity between Azure virtual networks, on-premises networks, and individual client devices. Site-to-Site VPN connectivity typically uses encrypted tunnels over the public Internet.

## What Problem Does It Solve?

VPN Gateway provides hybrid or remote connectivity when encrypted Internet-based connectivity is acceptable and a dedicated private circuit is not required.

## Key Characteristics

- Encrypted VPN connectivity
- Site-to-Site (S2S)
- Point-to-Site (P2S)
- VNet-to-VNet VPN capability
- Internet-based transport for common hybrid VPN scenarios

## Decision Factors

Choose VPN Gateway when:

- encrypted connectivity is sufficient;
- the public Internet can be used as the transport;
- the scenario prioritizes lower cost or faster/simpler setup over dedicated private connectivity;
- an individual remote client needs VPN access to a VNet.

Consider ExpressRoute when the requirement prioritizes private connectivity, higher throughput, or predictable latency.

## Best-Fit Scenarios

- Office or datacenter ↔ Azure using Site-to-Site VPN
- Remote user ↔ Azure VNet using Point-to-Site VPN
- Budget-constrained hybrid connectivity where Internet transport is acceptable
- Backup hybrid connectivity path

## Compare With

| Decision Factor | VPN Gateway | ExpressRoute |
|---|---|---|
| Transport | Public Internet | Private provider connection |
| Security | Encrypted tunnel | Private path |
| Typical cost | Lower | Higher |
| Provisioning | Generally faster/simpler | More involved; provider dependency |
| Latency | Internet-dependent | More predictable |
| Bandwidth | Lower than highest ExpressRoute options | Higher bandwidth options |

## Trade-offs

VPN Gateway usually reduces cost and provisioning complexity, but performance depends more on Internet conditions. ExpressRoute adds cost and operational dependencies in exchange for private, higher-performance, more predictable connectivity.

## Common Mistakes

❌ Automatically choosing ExpressRoute because it is the more powerful service.

If the scenario only requires secure hybrid connectivity and emphasizes **minimum cost or administrative effort**, VPN Gateway may be the better fit.

❌ Choosing VPN Gateway for private connectivity that explicitly must not traverse the public Internet.

## Microsoft Trigger Words

- encrypted VPN
- Site-to-Site
- Point-to-Site
- Internet-based hybrid connectivity

## Exam Reasoning

Do not stop at `on-premises ↔ Azure`.

1. Can both VPN Gateway and ExpressRoute satisfy the connectivity requirement?
2. Is private non-Internet connectivity mandatory?
3. What is being optimized: cost, administration, bandwidth, latency, or privacy?
4. Choose the least excessive solution that satisfies every stated requirement.
