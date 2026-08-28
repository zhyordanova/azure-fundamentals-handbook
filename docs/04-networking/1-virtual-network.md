# Azure Virtual Network (VNet)

## Definition

Azure Virtual Network (VNet) is the fundamental private networking service in Azure. It provides an isolated network boundary in which Azure resources can communicate with each other and connect to other networks.

## What Problem Does It Solve?

A VNet provides the private network foundation for Azure workloads. It defines an address space that can be divided into subnets and connected to other Azure or on-premises networks.

## Key Characteristics

- Private IP addressing
- Network isolation
- Communication between Azure resources
- Address space that can be divided into subnets
- Connectivity to other VNets
- Connectivity to on-premises networks
- Integration with Azure networking and security services

## Decision Factors

Choose a VNet when the requirement is to create a private network boundary for Azure resources.

Do not choose a VNet when the actual requirement is only to:

- divide an existing VNet into smaller network segments → **Subnet**
- filter inbound or outbound traffic → **NSG**
- connect two existing VNets → **VNet Peering**
- connect Azure to on-premises → **VPN Gateway or ExpressRoute**

## Best-Fit Scenarios

- Hosting Azure Virtual Machines in a private network
- Separating application workloads from the public Internet
- Building a network that will later connect to on-premises systems
- Creating a foundation for subnets, peering, private endpoints, or Bastion

## Compare With

| Requirement | Best Fit |
|---|---|
| Create a private Azure network | **VNet** |
| Divide a VNet address space | **Subnet** |
| Filter network traffic | **NSG** |
| Connect separate VNets | **VNet Peering** |

## Trade-offs

A VNet creates the network boundary but does not by itself define detailed traffic permissions, connect every separate network automatically, or make Azure PaaS services private. Additional networking services are used for those requirements.

## Common Mistakes

❌ Treating a VNet as a firewall.

A VNet provides networking. NSGs provide traffic filtering.

❌ Assuming separate VNets communicate automatically.

They require peering or another connectivity solution.

## Microsoft Trigger Words

- private Azure network
- address space
- network isolation
- Azure resources communicate privately

## Exam Reasoning

Ask:

> What is the object I need to create or control?

If the answer is **the private network itself**, choose **Azure Virtual Network**.
