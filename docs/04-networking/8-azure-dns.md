# Azure DNS

## Definition

Azure DNS provides DNS domain hosting and name resolution by using Azure infrastructure. Azure supports public and private DNS scenarios.

## What Problem Does It Solve?

DNS translates human-readable names into network addresses. Azure DNS lets organizations host DNS zones and resolve names without treating DNS as a network-connectivity service.

## Key Characteristics

- DNS zone hosting
- DNS records
- Public DNS capabilities
- Private DNS capabilities for Azure virtual networks
- Azure-managed infrastructure

## Decision Factors

Choose Azure DNS when the requirement is **name resolution or DNS hosting**.

Do not choose Azure DNS when the requirement is to connect networks, filter traffic, or provide private service access. Those are different networking problems.

## Best-Fit Scenarios

- Host DNS records for a domain
- Resolve names for Azure resources
- Provide private DNS naming inside VNets

## Compare With

| Requirement | Best Fit |
|---|---|
| Host/resolve DNS names | **Azure DNS** |
| Connect VNets | VNet Peering |
| Private access to Azure PaaS | Private Endpoint |
| Filter traffic | NSG |

## Trade-offs

Azure DNS solves name resolution, not connectivity. A private endpoint can also require DNS configuration so that a service name resolves to its private IP address.

## Common Mistakes

❌ Treating DNS-based name resolution as network routing or network peering.

## Microsoft Trigger Words

- DNS zone
- DNS records
- name resolution
- domain hosting

## Exam Reasoning

Ask:

> Is the problem about how traffic travels, or about translating a name to an address?

Name resolution → **Azure DNS**.
