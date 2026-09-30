# Microsoft Trigger Words

> Quick reference for recognizing common AZ-900 question patterns.

Trigger words are **confirmation clues**, not a substitute for
understanding the requirement.

Use this file after asking:

> **What is the company actually trying to achieve?**

------------------------------------------------------------------------

## Cloud Concepts

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  on-demand resources,                **Cloud Computing**
  consumption-based, provision when   
  needed                              

  provider-owned infrastructure,      **Public Cloud**
  public provider, shared cloud       
  environment                         

  dedicated to one organization,      **Private Cloud**
  private environment                 

  on-premises + public cloud, keep    **Hybrid Cloud**
  some workloads locally              

  uptime, SLA, minimize downtime,     **High Availability**
  remain available                    

  capacity can increase or decrease   **Scalability**

  more CPU / RAM, bigger or smaller   **Vertical Scaling --- Up / Down**
  resource                            

  more or fewer instances / machines  **Horizontal Scaling --- Out / In**

  capacity dynamically adapts to      **Elasticity**
  demand                              

  worldwide users, geographic         **Geo-distribution**
  distribution, multiple locations    

  upfront investment, purchase        **CapEx**
  infrastructure                      

  ongoing / consumption expense, pay  **OpEx**
  for usage                           

  pay only for what is consumed       **Consumption-based model**

  event-driven execution, no server   **Serverless**
  management              
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Cloud Concept Traps

``` text
Capacity CAN change
→ Scalability

Capacity dynamically changes with demand
→ Elasticity

CPU / RAM changes
→ Vertical scaling

Number of instances changes
→ Horizontal scaling
```

------------------------------------------------------------------------

## Azure Architecture

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  worldwide Azure infrastructure,     **Azure Global Infrastructure**
  global datacenter footprint         

  broad geographic / data residency   **Azure Geography**
  boundary                            

  special isolated cloud for national **Sovereign Region / Sovereign
  or regulatory requirements          Cloud**

  deployment location, geographic     **Azure Region**
  area containing datacenters         

  isolated datacenter locations       **Availability Zones**
  inside one region, datacenter       
  failure                             

  relationship between two Azure      **Region Pair**
  regions, paired regions             

  organize multiple subscriptions     **Management Group**

  billing, quota, subscription        **Azure Subscription**
  boundary                            

  logical container for related       **Resource Group**
  resources                           

  deployed instance of an Azure       **Azure Resource**
  service                             

  create/update/delete resources,     **Azure Resource Manager (ARM)**
  Azure management layer

  declarative JSON deployment,        **ARM Template / Infrastructure** as
  repeatable Azure infrastructure     Code
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Architecture Traps

``` text
Datacenter-level isolation inside one region
→ Availability Zone

Relationship between two regions
→ Region Pair

Resources in one Resource Group
→ can be in different Azure regions

Resource Group location
→ does NOT force all contained resources into that location
```

------------------------------------------------------------------------

## Compute

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  manage OS, full control, install    **Azure Virtual Machines**
  custom software                     

  VM disk, NIC, public IP, supporting **VM Supporting Resources**
  VM resources                        

  multiple VM instances, autoscale VM **Virtual Machine Scale Sets**
  fleet                               

  fault/update domains, protect VMs   **Availability Sets**
  from host/rack maintenance failures 

  virtual desktops / applications     **Azure Virtual Desktop**
  delivered to users                  

  host web app, deploy code, no OS    **Azure App Service**
  management                          

  serverless, event-driven, trigger,  **Azure Functions**
  short code execution                

  package application + dependencies, **Containers**
  portable runtime                    

  run containers without managing VMs **Azure Container Instances (ACI)**
  or Kubernetes

  Kubernetes orchestration, container **Azure Kubernetes Service (AKS)**
  cluster
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## Networking

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  private Azure network, IP address   **Virtual Network (VNet)**
  space                               

  divide VNet address space           **Subnet**

  allow/deny inbound or outbound      **Network Security Group (NSG)**
  traffic, ports, security rules      

  connect two VNets privately over    **VNet Peering**
  Microsoft backbone                  

  encrypted connection over public    **VPN Gateway**
  Internet, Site-to-Site /            
  Point-to-Site                       

  dedicated private connection,       **ExpressRoute**
  predictable connectivity, no public 
  Internet path                       

  public IP vs private access to a    **Public / Private Endpoint**
  service                             

  domain-name resolution              **Azure DNS**

  secure browser-based RDP/SSH, VM    **Azure Bastion**
  does not need public IP     

  represent on-premises VPN site /    **Local Network Gateway**
  address prefixes        
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## Storage

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  Blob, Files, Queue, Table namespace **Storage Account**

  unstructured objects, images,       **Blob Storage**
  videos, backups                     

  frequent access                     **Hot Tier**

  infrequent but online               **Cool Tier**

  rare access but still online        **Cold Tier**

  offline, long-term retention,       **Archive Tier**
  rehydration required                

  SMB / NFS shared file system        **Azure Files**

  VM OS/data disk, block storage      **Managed Disks**

  messages, asynchronous processing,  **Queue Storage**
  decouple applications               

  NoSQL key-value, PartitionKey /     **Table Storage**
  RowKey                              

  command-line file copy to/from      **AzCopy**
  Azure Storage                       

  graphical storage management / file **Storage Explorer**
  transfer                            

  synchronize Windows file server     **Azure File Sync**
  with Azure Files                    

  discover, assess, plan, track       **Azure Migrate**
  migration

  very large data transfer when       **Azure Data Box**
  network is impractical, physical    
  appliance                           
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Storage Redundancy

  Requirement                          Think
  ------------------------------------ ----------
  local infrastructure protection      **LRS**
  availability-zone protection         **ZRS**
  secondary-region replication         **GRS**
  zone + secondary-region protection   **GZRS**

------------------------------------------------------------------------

## Identity & Security

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  cloud identities, users, groups,    **Microsoft Entra ID**
  sign-in                             

  domain join, Group Policy, LDAP,    **Microsoft Entra Domain Services**
  Kerberos / NTLM                     

  what actions can a user perform,    **Azure RBAC**
  roles, permissions, least privilege 

  multiple authentication factors,    **MFA**
  additional verification             

  authenticate without a traditional  **Passwordless authentication**
  password                            

  sign in once, multiple applications **Single Sign-On (SSO)**

  location/device/risk conditions,    **Conditional Access**
  require MFA or block access         

  same identity across on-premises    **Hybrid Identity**
  and cloud                           

  partner/vendor/external             **External Identities / B2B**
  organization access                 

  verify explicitly, least privilege, **Zero Trust**
  assume breach                       

  multiple security layers            **Defense in Depth**

  cloud security posture, security    **Microsoft Defender for Cloud**
  recommendations       
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Identity Traps

``` text
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

------------------------------------------------------------------------

## Governance & Management

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  enforce standards, audit            **Azure Policy**
  configuration, restrict locations / 
  VM sizes, require tags              

  prevent deletion, prevent           **Resource Locks**
  modification, read-only             

  metadata, department, owner,        **Resource Tags**
  environment, cost grouping          

  govern / discover / understand data **Microsoft Purview**
  estate                              

  Microsoft audit reports, compliance **Service Trust Portal**
  documentation                       

  graphical browser-based Azure       **Azure Portal**
  management                          

  browser-hosted command environment  **Azure Cloud Shell**

  cross-platform Azure command line   **Azure CLI**

  PowerShell-based Azure              **Azure PowerShell**
  administration                      

  manage on-premises / multicloud     **Azure Arc**
  resources through Azure             

  declarative, repeatable             **Infrastructure as Code (IaC)**
  infrastructure definition    

  Azure declarative JSON              **ARM Template**
  infrastructure deployment
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Governance & Management Traps

``` text
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

------------------------------------------------------------------------

## Monitoring

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  metrics, logs, alerts, telemetry,   **Azure Monitor**
  resource monitoring                 

  application performance, requests,  **Application Insights**
  failures, dependencies              

  query logs, KQL, Log Analytics      **Log Analytics**
  workspace                           

  recommendations, best practices,    **Azure Advisor**
  underutilized resources

  Azure outage, service incident,     **Azure Service Health**
  planned maintenance, health         
  advisory                            
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

## Cost Management

  -----------------------------------------------------------------------
  Trigger Words / Scenario            Think
  ----------------------------------- -----------------------------------
  resource type, size, consumption,   **Factors Affecting Azure Costs**
  region, outbound data transfer      

  estimate planned / future solution  **Azure Pricing Calculator**
  cost                                

  analyze actual spending, cost       **Microsoft Cost Management**
  trends, budgets                     

  spending threshold, notification    **Budget + Alert**

  optimization recommendation,        **Azure Advisor**
  underutilized resource              

  stable predictable long-term usage  **Azure Reservations**

  predictable compute spend + more    **Savings Plan for Compute**
  flexibility                         

  interruptible workload, eviction,   **Spot VMs**
  unused capacity

  uncertain usage, no commitment,     **Pay-as-you-go**
  maximum flexibility                
    
  -----------------------------------------------------------------------

------------------------------------------------------------------------

### Cost Trap

``` text
Budget
→ threshold / notification

Budget
≠ hard spending limit
≠ automatic resource shutdown
```

------------------------------------------------------------------------

## Service Models

  ------------------------------------------------------------------------
  Trigger Words / Scenario             | Think
  ------------------------------------ | -----------------------------------
  manage OS, virtual server, full      |  **IaaS**
  administrative control               

  build/deploy application, provider   |  **PaaS**
  manages OS/platform                  

  use finished cloud application       |  **SaaS**

  who manages                          | **Shared Responsibility Model**
  OS/application/infrastructure/data   
  ------------------------------------------------------------------------

### Classification Examples

  Example                  |  Model
  ------------------------ |  ----------
  Azure Virtual Machines   |  **IaaS**
  Azure App Service        | **PaaS**
  Azure Functions          | **PaaS**
  Azure SQL Database       | **PaaS**
  Microsoft 365            |  **SaaS**

------------------------------------------------------------------------

## High-Value Distinctions

  If the requirement is...                  | Think
  ----------------------------------------- | ----------------------------
  Keep service available                    | **High Availability**
  Capacity can change                       | **Scalability**
  Capacity dynamically follows demand       |  **Elasticity**
  More CPU / RAM                            | **Vertical scaling**
  More instances                            | **Horizontal scaling**
  Datacenter failure inside one region      | **Availability Zones**
  Multiple subscriptions                    | **Management Groups**
  Billing / quota boundary                  | **Subscription**
  Related resources                         | **Resource Group**
  OS control                                | **Virtual Machine / IaaS**
  VM fleet autoscaling                      | **VM Scale Sets**
  Web app without OS management             | **App Service / PaaS**
  Event-driven code                         | **Functions**
  Containers without Kubernetes             | **ACI**
  Kubernetes orchestration                  | **AKS**
  Filter network traffic                    | **NSG**
  Connect Azure VNets                       | **VNet Peering**
  On-premises over encrypted Internet VPN   | **VPN Gateway**
  Dedicated private connectivity            | **ExpressRoute**
  Secure RDP / SSH without VM public IP     | **Bastion**
  Objects                                   | **Blob Storage**
  Shared file system                        | **Azure Files**
  VM disk                                   | **Managed Disks**
  Messages                                  | **Queue Storage**
  Key-value NoSQL                           | **Table Storage**
  Rare but online blob data                 | **Cold**
  Offline archived blob data                | **Archive**
  Manage Azure resource permissions         | **RBAC**
  Enforce resource configuration            | **Policy**
  Prevent delete only, allow modification   | **CanNotDelete**
  Prevent modification + deletion           | **ReadOnly**
  Govern data                               | **Purview**
  Microsoft compliance evidence             | **Service Trust Portal**
  Browser command environment               | **Cloud Shell**
  Manage hybrid / multicloud resources      | **Azure Arc**
  Repeatable declarative infrastructure     | **IaC / ARM Templates**
  Estimate future cost                      | **Pricing Calculator**
  Analyze actual cost                       | **Cost Management**
  Optimization recommendation               | **Advisor**
  Interruptible compute                     | **Spot**
  Stable long-term commitment               | **Reservation**
  Flexible compute commitment               | **Savings Plan**
  Finished application                      | **SaaS**

------------------------------------------------------------------------

## Exam Strategy

Do **not** choose an answer because one keyword looks familiar.

Use this sequence:

``` text
1. What PROBLEM must be solved?

2. What SCOPE / ENDPOINTS are involved?

3. What CONSTRAINTS matter?
   - cost
   - control
   - availability
   - connectivity
   - management effort

4. Which options are technically valid?

5. Which option is the BEST FIT?
```

Then use trigger words only to **confirm** the answer.

> **Requirement → Scope → Constraints → Best Fit**
