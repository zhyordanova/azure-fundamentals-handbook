# Azure Virtual Network (VNet)

## Definition

An Azure Virtual Network (VNet) is the fundamental networking service in Azure.

It enables Azure resources to communicate securely with each other, with the Internet, and with on-premises networks.

A Virtual Network is similar to a traditional network in an on-premises datacenter, but it provides the additional scalability, availability, and flexibility of Azure.

## Why Virtual Networks Exist

Most Azure resources need network connectivity.

For example:

- Virtual Machines
- Azure Kubernetes Service (AKS)
- Azure Bastion
- VPN Gateway

A Virtual Network provides the private network where these resources can communicate securely.

Without a Virtual Network, many Azure services cannot communicate privately.

## Characteristics

An Azure Virtual Network provides:

- Private IP addressing
- Network isolation
- Communication between Azure resources
- Connectivity to on-premises networks
- Connectivity to the Internet
- Integration with other Azure networking services

## Typical Use Cases

Azure Virtual Networks are commonly used for:

- Hosting Virtual Machines
- Connecting multiple Azure services
- Hybrid cloud networking
- Secure internal application communication
- Enterprise cloud environments

## Connectivity Options

Resources inside a Virtual Network can communicate with:

- Other resources in the same Virtual Network
- Other Virtual Networks (using VNet Peering)
- On-premises networks (using VPN Gateway or ExpressRoute)
- The Internet

## Microsoft Trigger Words

If a question contains words such as:

- private network
- Azure network
- VNet
- network communication
- Azure resources communicate
- IP address space

Think:

> Azure Virtual Network (VNet)

## Common Exam Questions

Microsoft frequently asks questions such as:

- What is an Azure Virtual Network?
- Which Azure service enables communication between Azure resources?
- Which Azure networking service provides private networking?
- Which Azure networking service connects resources inside Azure?

## Common Mistakes

❌ Thinking a Virtual Network is a security service.

A Virtual Network provides connectivity.

Traffic filtering is performed by Network Security Groups (NSGs).

❌ Thinking Virtual Networks automatically connect to each other.

Separate VNets require Virtual Network Peering or another connectivity solution.

## Compare With

| Azure Virtual Network | Network Security Group |
|------------------------|------------------------|
| Provides network connectivity | Filters network traffic |
| Creates a private network | Controls inbound and outbound access |
| Connects Azure resources | Secures Azure resources |

## Exam Tip

Ask:

> "Does the requirement need connectivity, traffic filtering, or connectivity between networks?"

If the requirement is about creating a private network for Azure resources:

→ **Azure Virtual Network**

If it is about filtering traffic:

→ **Network Security Group**

If it is about connecting separate networks:

→ Think about **VNet Peering, VPN Gateway, or ExpressRoute**.