# Microsoft Trigger Words

> Quick reference for recognizing common AZ-900 question patterns.

Trigger words are **confirmation clues**, not a substitute for
understanding the requirement.

Use this file after asking:

> **What is the company actually trying to achieve?**

## Cloud Concepts

| Trigger Words / Scenario                                                 | Think                             |
|:----|:----------------------------------|
| on-demand resources, consumption-based, provision when needed            | **Cloud Computing**               |
| provider-owned infrastructure, public provider, shared cloud environment | **Public Cloud**                  |
| dedicated to one organization, private environment                       | **Private Cloud**                 |
| on-premises + public cloud, keep some workloads locally                  | **Hybrid Cloud**                  |
| uptime, SLA, minimize downtime, remain available                         | **High Availability**             |
| capacity can increase or decrease                                        | **Scalability**                   |
| more CPU / RAM, bigger or smaller resource                               | **Vertical Scaling — Up / Down**  |
| more or fewer instances / machines                                       | **Horizontal Scaling — Out / In** |
| capacity dynamically adapts to demand                                    | **Elasticity**                    |
| worldwide users, geographic distribution, multiple locations             | **Geo-distribution**              |
| upfront investment, purchase infrastructure                              | **CapEx**                         |
| ongoing / consumption expense, pay for usage                             | **OpEx**                          |
| pay only for what is consumed                                            | **Consumption-based model**       |
| event-driven execution, no server management                             | **Serverless**                    |

### Cloud Concept Traps

```text
Capacity CAN change
→ Scalability

Capacity dynamically changes with demand
→ Elasticity

CPU / RAM changes
→ Vertical scaling

Number of instances changes
→ Horizontal scaling
```

## Azure Architecture

| Trigger Words / Scenario                                            | Think                                     |
|:--------------------------------------------------------------------|:------------------------------------------|
| worldwide Azure infrastructure, global datacenter footprint         | **Azure Global Infrastructure**           |
| broad geographic / data residency boundary                          | **Azure Geography**                       |
| special isolated cloud for national or regulatory requirements      | **Sovereign Region / Sovereign Cloud**    |
| deployment location, geographic area containing datacenters         | **Azure Region**                          |
| isolated datacenter locations inside one region, datacenter failure | **Availability Zones**                    |
| relationship between two Azure regions, paired regions              | **Region Pair**                           |
| organize multiple subscriptions                                     | **Management Group**                      |
| billing, quota, subscription boundary                               | **Azure Subscription**                    |
| logical container for related resources                             | **Resource Group**                        |
| deployed instance of an Azure service                               | **Azure Resource**                        |
| create/update/delete resources, Azure management layer              | **Azure Resource Manager (ARM)**          |
| declarative JSON deployment, repeatable Azure infrastructure        | **ARM Template / Infrastructure as Code** |

### Architecture Traps

```text
Datacenter-level isolation inside one region
→ Availability Zone

Relationship between two regions
→ Region Pair

Resources in one Resource Group
→ can be in different Azure regions

Resource Group location
→ does NOT force all contained resources into that location
```

## Compute

| Trigger Words / Scenario                                              | Think                               |
|:----------------------------------------------------------------------|:------------------------------------|
| manage OS, full control, install custom software                      | **Azure Virtual Machines**          |
| VM disk, NIC, public IP, supporting VM resources                      | **VM Supporting Resources**         |
| multiple VM instances, autoscale VM fleet                             | **Virtual Machine Scale Sets**      |
| fault/update domains, protect VMs from host/rack maintenance failures | **Availability Sets**               |
| virtual desktops / applications delivered to users                    | **Azure Virtual Desktop**           |
| host web app, deploy code, no OS management                           | **Azure App Service**               |
| serverless, event-driven, trigger, short code execution               | **Azure Functions**                 |
| package application + dependencies, portable runtime                  | **Containers**                      |
| run containers without managing VMs or Kubernetes                     | **Azure Container Instances (ACI)** |
| Kubernetes orchestration, container cluster                           | **Azure Kubernetes Service (AKS)**  |

## Networking

| Trigger Words / Scenario                                                        | Think                            |
|:-----------|:---------------------------------|
| private Azure network, IP address space                                         | **Virtual Network (VNet)**       |
| divide VNet address space                                                       | **Subnet**                       |
| allow/deny inbound or outbound traffic, ports, security rules                   | **Network Security Group (NSG)** |
| connect two VNets privately over Microsoft backbone                             | **VNet Peering**                 |
| encrypted connection over public Internet, Site-to-Site / Point-to-Site         | **VPN Gateway**                  |
| dedicated private connection, predictable connectivity, no public Internet path | **ExpressRoute**                 |
| public IP vs private access to a service                                        | **Public / Private Endpoint**    |
| domain-name resolution                                                          | **Azure DNS**                    |
| secure browser-based RDP/SSH, VM does not need public IP                        | **Azure Bastion**                |
| represent on-premises VPN site / address prefixes                               | **Local Network Gateway**        |

## Storage

| Trigger Words / Scenario                                                 | Think                |
|:----|:---------------------|
| Blob, Files, Queue, Table namespace                                      | **Storage Account**  |
| unstructured objects, images, videos, backups                            | **Blob Storage**     |
| frequent access                                                          | **Hot Tier**         |
| infrequent but online                                                    | **Cool Tier**        |
| rare access but still online                                             | **Cold Tier**        |
| offline, long-term retention, rehydration required                       | **Archive Tier**     |
| SMB / NFS shared file system                                             | **Azure Files**      |
| VM OS/data disk, block storage                                           | **Managed Disks**    |
| messages, asynchronous processing, decouple applications                 | **Queue Storage**    |
| NoSQL key-value, PartitionKey / RowKey                                   | **Table Storage**    |
| command-line file copy to/from Azure Storage                             | **AzCopy**           |
| graphical storage management / file transfer                             | **Storage Explorer** |
| synchronize Windows file server with Azure Files                         | **Azure File Sync**  |
| discover, assess, plan, track migration                                  | **Azure Migrate**    |
| very large data transfer when network is impractical, physical appliance | **Azure Data Box**   |

### Storage Redundancy

| Requirement                        | Think    |
|:-----------------------------------|:---------|
| local infrastructure protection    | **LRS**  |
| availability-zone protection       | **ZRS**  |
| secondary-region replication       | **GRS**  |
| zone + secondary-region protection | **GZRS** |

## Identity & Security

| Trigger Words / Scenario                                             | Think                               |
|:---------------------------------------------------------------------|:------------------------------------|
| cloud identities, users, groups, sign-in                             | **Microsoft Entra ID**              |
| domain join, Group Policy, LDAP, Kerberos / NTLM                     | **Microsoft Entra Domain Services** |
| what actions can a user perform, roles, permissions, least privilege | **Azure RBAC**                      |
| multiple authentication factors, additional verification             | **MFA**                             |
| authenticate without a traditional password                          | **Passwordless authentication**     |
| sign in once, multiple applications                                  | **Single Sign-On (SSO)**            |
| location/device/risk conditions, require MFA or block access         | **Conditional Access**              |
| same identity across on-premises and cloud                           | **Hybrid Identity**                 |
| partner/vendor/external organization access                          | **External Identities / B2B**       |
| verify explicitly, least privilege, assume breach                    | **Zero Trust**                      |
| multiple security layers                                             | **Defense in Depth**                |
| cloud security posture, security recommendations                     | **Microsoft Defender for Cloud**    |

### Identity Traps

```text
WHO ARE YOU?
→ Authentication

WHAT CAN YOU DO?
→ Authorization / RBAC

Multiple factors
→ MFA

No traditional password
→ Passwordless

Decide WHEN MFA is required
→ Conditional Access
```

## Governance & Management

| Trigger Words / Scenario                                                            | Think                            |
|:---------------|:---------------------------------|
| enforce standards, audit configuration, restrict locations / VM sizes, require tags | **Azure Policy**                 |
| prevent deletion, prevent modification, read-only                                   | **Resource Locks**               |
| metadata, department, owner, environment, cost grouping                             | **Resource Tags**                |
| govern / discover / understand data estate                                          | **Microsoft Purview**            |
| Microsoft audit reports, compliance documentation                                   | **Service Trust Portal**         |
| graphical browser-based Azure management                                            | **Azure Portal**                 |
| browser-hosted command environment                                                  | **Azure Cloud Shell**            |
| cross-platform Azure command line                                                   | **Azure CLI**                    |
| PowerShell-based Azure administration                                               | **Azure PowerShell**             |
| manage on-premises / multicloud resources through Azure                             | **Azure Arc**                    |
| declarative, repeatable infrastructure definition                                   | **Infrastructure as Code (IaC)** |
| Azure declarative JSON infrastructure deployment                                    | **ARM Template**                 |

### Governance & Management Traps

```text
WHO can perform an action?
→ RBAC

WHAT configuration is allowed / required?
→ Azure Policy

Protect resource from delete / modify?
→ Resource Lock

Cloud Shell
→ environment

Azure CLI / Azure PowerShell
→ tools
```

## Monitoring

| Trigger Words / Scenario                                             | Think                    |
|:---------------------------------------------------------------------|:-------------------------|
| metrics, logs, alerts, telemetry, resource monitoring                | **Azure Monitor**        |
| application performance, requests, failures, dependencies            | **Application Insights** |
| query logs, KQL, Log Analytics workspace                             | **Log Analytics**        |
| recommendations, best practices, underutilized resources             | **Azure Advisor**        |
| Azure outage, service incident, planned maintenance, health advisory | **Azure Service Health** |

## Cost Management

| Trigger Words / Scenario                                         | Think                             |
|:-----------------------------------------------------------------|:----------------------------------|
| resource type, size, consumption, region, outbound data transfer | **Factors Affecting Azure Costs** |
| estimate planned / future solution cost                          | **Azure Pricing Calculator**      |
| analyze actual spending, cost trends, budgets                    | **Microsoft Cost Management**     |
| spending threshold, notification                                 | **Budget + Alert**                |
| optimization recommendation, underutilized resource              | **Azure Advisor**                 |
| stable predictable long-term usage                               | **Azure Reservations**            |
| predictable compute spend + more flexibility                     | **Savings Plan for Compute**      |
| interruptible workload, eviction, unused capacity                | **Spot VMs**                      |
| uncertain usage, no commitment, maximum flexibility              | **Pay-as-you-go**                 |

### Cost Trap

```text
Budget
→ threshold / notification

Budget
≠ hard spending limit
≠ automatic resource shutdown
```

## Service Models

| Trigger Words / Scenario                               | Think                           |
|:-------------------------------------------------------|:--------------------------------|
| manage OS, virtual server, full administrative control | **IaaS**                        |
| build/deploy application, provider manages OS/platform | **PaaS**                        |
| use finished cloud application                         | **SaaS**                        |
| who manages OS/application/infrastructure/data         | **Shared Responsibility Model** |

### Classification Examples

| Example                | Model    |
|:-----------------------|:---------|
| Azure Virtual Machines | **IaaS** |
| Azure App Service      | **PaaS** |
| Azure Functions        | **PaaS** |
| Azure SQL Database     | **PaaS** |
| Microsoft 365          | **SaaS** |

## High-Value Distinctions

| If the requirement is…                  | Think                      |
|:----------------------------------------|:---------------------------|
| Keep service available                  | **High Availability**      |
| Capacity can change                     | **Scalability**            |
| Capacity dynamically follows demand     | **Elasticity**             |
| More CPU / RAM                          | **Vertical scaling**       |
| More instances                          | **Horizontal scaling**     |
| Datacenter failure inside one region    | **Availability Zones**     |
| Multiple subscriptions                  | **Management Groups**      |
| Billing / quota boundary                | **Subscription**           |
| Related resources                       | **Resource Group**         |
| OS control                              | **Virtual Machine / IaaS** |
| VM fleet autoscaling                    | **VM Scale Sets**          |
| Web app without OS management           | **App Service / PaaS**     |
| Event-driven code                       | **Functions**              |
| Containers without Kubernetes           | **ACI**                    |
| Kubernetes orchestration                | **AKS**                    |
| Filter network traffic                  | **NSG**                    |
| Connect Azure VNets                     | **VNet Peering**           |
| On-premises over encrypted Internet VPN | **VPN Gateway**            |
| Dedicated private connectivity          | **ExpressRoute**           |
| Secure RDP / SSH without VM public IP   | **Bastion**                |
| Objects                                 | **Blob Storage**           |
| Shared file system                      | **Azure Files**            |
| VM disk                                 | **Managed Disks**          |
| Messages                                | **Queue Storage**          |
| Key-value NoSQL                         | **Table Storage**          |
| Rare but online blob data               | **Cold**                   |
| Offline archived blob data              | **Archive**                |
| Manage Azure resource permissions       | **RBAC**                   |
| Enforce resource configuration          | **Policy**                 |
| Prevent delete only, allow modification | **CanNotDelete**           |
| Prevent modification + deletion         | **ReadOnly**               |
| Govern data                             | **Purview**                |
| Microsoft compliance evidence           | **Service Trust Portal**   |
| Browser command environment             | **Cloud Shell**            |
| Manage hybrid / multicloud resources    | **Azure Arc**              |
| Repeatable declarative infrastructure   | **IaC / ARM Templates**    |
| Estimate future cost                    | **Pricing Calculator**     |
| Analyze actual cost                     | **Cost Management**        |
| Optimization recommendation             | **Advisor**                |
| Interruptible compute                   | **Spot**                   |
| Stable long-term commitment             | **Reservation**            |
| Flexible compute commitment             | **Savings Plan**           |
| Finished application                    | **SaaS**                   |

## How to Use Trigger Words

Trigger words are **confirmation clues**, not the answer itself.

```text
Requirement
→ Identify the concept
→ Use trigger words to confirm
