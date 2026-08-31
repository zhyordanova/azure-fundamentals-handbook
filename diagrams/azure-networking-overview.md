# Azure Networking Overview

This diagram provides a high-level view of how the main Azure networking components relate to each other.

```mermaid
flowchart LR

    ONPREM["On-premises Network"]
    LNG["Local Network Gateway"]
    VPN["VPN Gateway"]

    VNET1["Azure VNet A"]
    VNET2["Azure VNet B"]

    SUBNET["Subnet"]
    VM["Azure VM"]
    NSG["Network Security Group"]

    ADMIN["Administrator"]
    BASTION["Azure Bastion"]

    SERVICE["Azure Service"]
    PE["Private Endpoint"]

    ONPREM -. "represented by" .-> LNG
    LNG -. "used in VPN configuration" .-> VPN
    VPN <--> VNET1

    VNET1 <-->|"VNet Peering"| VNET2

    VNET1 --> SUBNET
    SUBNET --> VM

    NSG -. "controls traffic" .-> SUBNET

    ADMIN --> BASTION
    BASTION --> VM

    SUBNET --> PE
    PE --> SERVICE
```

## How to Read the Diagram

### Network Structure

```text
VNet
 ↓
Subnet
 ↓
Azure resources
```

A **VNet** provides the Azure network.

A **Subnet** divides the VNet into smaller network segments.

---

### Traffic Control

```text
NSG
→ controls traffic
```

An NSG is not a network hop.

It applies security rules that allow or deny network traffic.

---

### VNet-to-VNet Connectivity

```text
VNet A
   ↕
VNet B

→ VNet Peering
```

VNet Peering privately connects Azure Virtual Networks.

---

### Private Access to Azure Services

```text
VNet
 ↓
Private Endpoint
 ↓
Azure Service
```

A Private Endpoint gives a supported Azure service a private access path from the VNet.

---

### VM Administration

```text
Administrator
      ↓
Azure Bastion
      ↓
Azure VM
```

Azure Bastion provides secure RDP/SSH access without requiring a public IP on the target VM.

---

### On-Premises Connectivity

```text
On-premises
      ↕
VPN Gateway
      ↕
Azure VNet
```

A **VPN Gateway** provides the actual VPN connectivity.

The **Local Network Gateway** is different:

> It represents the remote/on-premises network in the Azure VPN configuration.

It should not be interpreted as another network hop between the on-premises environment and Azure.