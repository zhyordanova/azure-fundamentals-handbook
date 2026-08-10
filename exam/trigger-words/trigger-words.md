# Microsoft Trigger Words

> Quick reference for recognizing common AZ-900 question patterns.

Microsoft exam questions often describe a requirement without directly naming the Azure service or concept.

Use the trigger words below to quickly identify what the question is asking about.

---

## Cloud Concepts

| Trigger Words | Think |
|---|---|
| on-demand, pay-as-you-go, consumption-based, provision | **Cloud Computing** |
| provider-owned infrastructure, public provider, Internet, pay-as-you-go | **Public Cloud** |
| dedicated infrastructure, one organization, own hardware, on-site datacenter | **Private Cloud** |
| on-premises + Azure, keep existing datacenter, gradual migration | **Hybrid Cloud** |
| uptime, SLA, minimize downtime, remain available | **High Availability** |
| increase capacity, more instances, growing workload | **Scalability** |
| automatically scale, demand, dynamic scaling, add/remove resources automatically | **Elasticity** |
| worldwide users, multiple regions, global deployment | **Geo-distribution** |
| upfront investment, buy servers, hardware purchase | **CapEx** |
| monthly cost, pay-as-you-go, ongoing cost, consumption | **OpEx** |

---

## Azure Architecture

| Trigger Words | Think |
|---|---|
| worldwide infrastructure, Microsoft datacenters, global network | **Azure Global Infrastructure** |
| compliance boundary, data residency, geography | **Azure Geography** |
| deployment location, geographic area, one or more datacenters | **Azure Region** |
| separate datacenters within one region, datacenter failure, fault isolation | **Availability Zones** |
| paired regions, regional disaster recovery, regional outage | **Region Pair** |
| multiple subscriptions, hierarchy, policies across subscriptions | **Management Group** |
| billing, quota, consumption boundary, subscription | **Azure Subscription** |
| logical container, related resources, manage together | **Resource Group** |
| VM, Storage Account, SQL Database, deployed Azure service | **Azure Resource** |
| deployment, create/update/delete resources, ARM, management layer | **Azure Resource Manager** |

---

## Compute

| Trigger Words | Think |
|---|---|
| manage OS, full control, install software, legacy application | **Azure Virtual Machines** |
| multiple VMs, autoscale, scale out, scale in, VM instances | **Virtual Machine Scale Sets** |
| web application, PaaS, Microsoft manages OS, deploy application code | **Azure App Service** |
| serverless, event-driven, trigger, execute code | **Azure Functions** |
| simple container workload, no VM management, no Kubernetes cluster | **Azure Container Instances (ACI)** |
| Kubernetes, orchestrate containers, microservices, container cluster | **Azure Kubernetes Service (AKS)** |

---

## Networking

| Trigger Words | Think |
|---|---|
| private Azure network, IP address space, Azure resources communicate | **Virtual Network (VNet)** |
| allow/deny traffic, inbound/outbound rules, ports, security rules | **Network Security Group (NSG)** |
| connect two VNets, Microsoft backbone, private VNet-to-VNet | **Virtual Network Peering** |
| encrypted VPN, Site-to-Site, Point-to-Site, on-premises over Internet | **Azure VPN Gateway** |
| private connection, no public Internet, circuit, predictable latency | **ExpressRoute** |
| secure RDP/SSH, VM administration, no public IP on VM | **Azure Bastion** |
| represents on-premises network, remote VPN site, address prefixes | **Local Network Gateway** |

---

## Storage

| Trigger Words | Think |
|---|---|
| Blob, Files, Queue, Table, Azure Storage namespace | **Storage Account** |
| images, videos, backups, unstructured data, object storage | **Blob Storage** |
| frequently accessed, active data | **Hot Tier** |
| infrequently accessed, online, 30+ days | **Cool Tier** |
| rarely accessed, online, 90+ days | **Cold Tier** |
| offline, long-term retention, rehydration, retrieval takes hours | **Archive Tier** |
| SMB, NFS, mounted drive, shared file system | **Azure Files** |
| VM disk, OS disk, data disk, block storage | **Managed Disks** |
| messages, asynchronous processing, process later, decouple applications | **Queue Storage** |
| NoSQL, key-value, Partition Key, Row Key, flexible schema | **Table Storage** |

---

## Identity

| Trigger Words | Think |
|---|---|
| identity, users, groups, authentication, sign-in, Azure AD | **Microsoft Entra ID** |
| permissions, roles, authorization, least privilege, Reader/Contributor/Owner | **Azure RBAC** |
| second factor, verification code, Authenticator, additional authentication | **MFA** |
| sign in once, one login, multiple applications | **Single Sign-On (SSO)** |
| require MFA based on condition, compliant device, location, block access | **Conditional Access** |
| on-premises Active Directory + Entra ID, synchronization, common identity | **Hybrid Identity** |

---

## Governance

| Trigger Words | Think |
|---|---|
| enforce, compliance, standards, require, deny, audit, mandatory tags | **Azure Policy** |
| prevent deletion, accidental deletion, read-only, cannot modify | **Resource Locks** |
| metadata, department, owner, environment, cost tracking, classification | **Resource Tags** |

---

## Monitoring

| Trigger Words | Think |
|---|---|
| metrics, logs, alerts, CPU utilization, telemetry | **Azure Monitor** |
| application performance, failed requests, response time, dependencies | **Application Insights** |
| query logs, KQL, Log Analytics workspace, investigate logs | **Log Analytics** |
| recommendations, optimize, best practices, underutilized resources | **Azure Advisor** |
| Azure outage, service incident, planned maintenance, health advisory | **Azure Service Health** |

---

## Cost Management

| Trigger Words | Think |
|---|---|
| resource type, size, consumption, region, data transfer | **Factors Affecting Azure Costs** |
| estimate, planned solution, expected monthly cost | **Azure Pricing Calculator** |
| actual spending, budget, cost analysis, spending alert | **Microsoft Cost Management** |
| stable predictable long-term usage, commitment | **Azure Reservations** |
| consistent hourly compute spend, flexible compute usage | **Azure Savings Plan for Compute** |
| unused capacity, interruptible workload, eviction | **Azure Spot Virtual Machines** |

---

## Service Models

| Trigger Words | Think |
|---|---|
| manage OS, full administrative control, install software, VM | **IaaS** |
| Microsoft manages OS, managed platform, deploy application code | **PaaS** |
| ready-to-use application, Microsoft 365, provider manages application | **SaaS** |
| who manages, customer responsibility, Microsoft responsibility | **Shared Responsibility Model** |

---

## High-Value Distinctions

| If the question says... | Think |
|---|---|
| Keep service running | **High Availability** |
| Increase capacity | **Scalability** |
| Automatically adjust capacity | **Elasticity** |
| Failure inside one Region | **Availability Zones** |
| Multiple subscriptions | **Management Groups** |
| Related Azure resources | **Resource Group** |
| One VM with OS control | **Virtual Machine** |
| Multiple scalable VMs | **VM Scale Sets** |
| Web application without OS management | **App Service** |
| Event-driven code | **Azure Functions** |
| Run containers without Kubernetes | **ACI** |
| Kubernetes orchestration | **AKS** |
| Filter network traffic | **NSG** |
| Connect two Azure VNets | **VNet Peering** |
| On-premises over encrypted VPN | **VPN Gateway** |
| Private connection without public Internet | **ExpressRoute** |
| Secure RDP / SSH to VM | **Azure Bastion** |
| Object storage | **Blob Storage** |
| Shared file system | **Azure Files** |
| VM disk | **Managed Disks** |
| Messages | **Queue Storage** |
| NoSQL key-value data | **Table Storage** |
| Who are you? | **Microsoft Entra ID** |
| What can you do? | **Azure RBAC** |
| Additional authentication | **MFA** |
| Decide when MFA is required | **Conditional Access** |
| One sign-in for many apps | **SSO** |
| Same identity on-premises + cloud | **Hybrid Identity** |
| Who can perform actions? | **Azure RBAC** |
| What configurations are allowed? | **Azure Policy** |
| Prevent accidental deletion | **Resource Locks** |
| Organize / classify resources | **Resource Tags** |
| Observe resources | **Azure Monitor** |
| Analyze application performance | **Application Insights** |
| Query logs | **Log Analytics** |
| Optimization recommendations | **Azure Advisor** |
| Azure platform incident | **Service Health** |
| Estimate future cost | **Pricing Calculator** |
| Analyze actual cost | **Cost Management** |
| Stable long-term usage | **Reservations** |
| Flexible compute commitment | **Savings Plan** |
| Interruptible workload | **Spot VMs** |
| Customer manages OS | **IaaS** |
| Microsoft manages OS, customer deploys app | **PaaS** |
| Customer uses finished application | **SaaS** |

---

## Exam Strategy

Do not choose an answer because you recognize only one keyword.

First identify the requirement:

> **What is the company actually trying to achieve?**

Then use the trigger words to confirm the Azure concept or service.

A useful pattern is:

> **Requirement → Trigger Words → Azure Service**