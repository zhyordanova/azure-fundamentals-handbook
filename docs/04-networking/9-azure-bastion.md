# Azure Bastion

## Definition

Azure Bastion is a fully managed service that provides secure RDP and SSH connectivity to Azure Virtual Machines by using the VMs' private IP addresses. The target VM does not require a public IP address for Bastion connectivity.

## What Problem Does It Solve?

Bastion reduces the need to expose VM management ports directly to the public Internet while still allowing administrators to manage Windows and Linux VMs.

## Key Characteristics

- Secure RDP and SSH
- Uses the VM's private IP
- No public IP required on the target VM
- Managed Azure service
- Azure portal access and supported native-client scenarios

## Decision Factors

Choose Bastion when the requirement is **administrative access to a VM**.

Do not choose Bastion for:

- connecting networks;
- DNS resolution;
- private access to an Azure PaaS service.

## Best-Fit Scenarios

- Administrator needs secure RDP to a Windows VM
- Administrator needs secure SSH to a Linux VM
- Target VM should not expose a public IP for management

## Compare With

| Azure Bastion | Private Endpoint | VPN Gateway |
|---|---|---|
| Admin access to VM | Private access to Azure service | Network/client VPN connectivity |
| RDP / SSH | Private IP service endpoint | Encrypted VPN tunnel |

## Trade-offs

Bastion simplifies secure VM administration, but it is not a general-purpose network connection between environments.

## Common Mistakes

❌ Choosing Bastion whenever the question mentions private IP.

Identify what is being accessed first.

## Microsoft Trigger Words

- RDP
- SSH
- VM administration
- no public IP on VM

## Exam Reasoning

> Person/admin → VM management

→ **Azure Bastion**
