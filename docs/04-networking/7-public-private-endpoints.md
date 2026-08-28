# Public and Private Endpoints

## Definition

An endpoint is a network access point used to reach a service.

A **public endpoint** is reachable through a public IP-based path. A **private endpoint** is a network interface with a private IP address from a VNet that provides private connectivity to a supported Azure service through Azure Private Link.

## What Problem Does It Solve?

Endpoints determine how clients reach a service. Private endpoints are used when a supported Azure service should be reachable privately from a VNet instead of relying on its public endpoint.

## Key Characteristics

### Public Endpoint

- Publicly routable access path
- Suitable when public access is required and appropriately secured

### Private Endpoint

- Private IP address from a VNet
- Private connectivity to a supported Azure service
- Uses Azure Private Link
- Helps avoid exposing service access through the public Internet

## Decision Factors

Choose a private endpoint when the scenario says that a supported Azure service such as Storage or SQL should be accessed through a **private IP address** from a VNet.

Do not confuse a private endpoint with Azure Bastion. Bastion provides administrative RDP/SSH access to VMs; a private endpoint provides private access to a supported service.

## Best-Fit Scenarios

- VNet resources privately access Azure Storage
- Applications privately access Azure SQL
- Public access to a supported PaaS service should be avoided or restricted

## Compare With

| Private Endpoint | Azure Bastion | VNet Peering |
|---|---|---|
| Private access to a supported Azure service | Secure VM administration | Connects Azure VNets |
| Private IP in a VNet | RDP/SSH | Network-to-network connectivity |

## Trade-offs

Private endpoints improve network isolation but introduce additional networking and DNS considerations. Public endpoints are simpler when public access is acceptable and properly secured.

## Common Mistakes

❌ Choosing Bastion because the phrase `private IP` appears.

First identify the object being accessed: **service or VM administration?**

## Microsoft Trigger Words

- private IP
- private access to Azure service
- Private Link
- avoid public endpoint

## Exam Reasoning

Object + goal:

> Azure service + private IP access

→ **Private Endpoint**
