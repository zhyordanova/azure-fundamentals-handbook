# Azure Bastion

## Definition

Azure Bastion is a fully managed Azure service that provides secure Remote Desktop Protocol (RDP) and Secure Shell (SSH) connectivity to Azure Virtual Machines directly through the Azure portal.

Azure Bastion eliminates the need to expose Virtual Machines to the public Internet by removing the requirement for public IP addresses on the VMs.

## Why Azure Bastion Exists

Administrators need secure access to Virtual Machines for management and maintenance.

Traditionally, this required:

- Public IP addresses
- Open RDP (3389) ports
- Open SSH (22) ports

Exposing these services to the Internet increases the attack surface.

Azure Bastion provides secure management access without exposing Virtual Machines directly to the Internet.

## Characteristics

Azure Bastion provides:

- Secure RDP connectivity
- Secure SSH connectivity
- Browser-based access through the Azure portal
- No public IP required on Virtual Machines
- Fully managed service

## Typical Use Cases

Azure Bastion is commonly used for:

- Managing Windows Virtual Machines
- Managing Linux Virtual Machines
- Secure administrative access
- Production environments
- Organizations with strict security requirements

## How Azure Bastion Works

Instead of connecting directly to a Virtual Machine, administrators connect to Azure Bastion through the Azure portal.

Azure Bastion then securely establishes the RDP or SSH session to the target Virtual Machine inside the Virtual Network.

```mermaid
flowchart TD
    Admin["Administrator"]
    Portal["Azure Portal"]
    Bastion["Azure Bastion"]
    VM["Virtual Machine"]

    Admin --> Portal --> Bastion --> VM
```

## Microsoft Trigger Words

If a question contains words such as:

- secure RDP
- secure SSH
- browser
- no public IP
- Azure Portal
- manage Virtual Machines

Think:

> Azure Bastion

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service provides secure RDP access?
- Which Azure service provides secure SSH access?
- Which Azure service allows administrators to connect to Virtual Machines through the Azure portal?
- Which Azure service removes the need for public IP addresses on Virtual Machines?

## Common Mistakes

❌ Thinking Azure Bastion connects networks.

Azure Bastion provides administrative access to Virtual Machines.

It does not connect Virtual Networks.

❌ Thinking Azure Bastion replaces VPN Gateway.

VPN Gateway connects networks.

Azure Bastion provides secure management access to Virtual Machines.

## Compare With

| Azure Bastion | Azure VPN Gateway |
|---------------|-------------------|
| Secure VM administration | Connects networks |
| RDP and SSH | Site-to-Site / Point-to-Site VPN |
| Browser-based access | Encrypted VPN tunnel |
| No public IP on VM required | Connects Azure with on-premises networks |

## Exam Tip

Microsoft often uses phrases such as:

- secure RDP
- secure SSH
- Azure Portal
- browser-based access
- no public IP

These phrases almost always indicate:

> **Azure Bastion**

If the question is about connecting networks, Azure Bastion is **not** the correct answer.