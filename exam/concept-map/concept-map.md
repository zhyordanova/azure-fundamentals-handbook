# Azure Fundamentals Concept Map

> High-level map of the core concepts and services covered in AZ-900.

Use this page to understand how the major Azure concepts relate to each other.

## Cloud Fundamentals

```mermaid
flowchart TD

    A["Cloud Computing"] --> B{"Deployment Model"}

    B --> C["Public Cloud"]
    B --> D["Private Cloud"]
    B --> E["Hybrid Cloud"]

    A --> F{"Cloud Benefits"}

    F --> G["High Availability"]
    F --> H["Scalability"]
    F --> I["Elasticity"]
    F --> J["Geo-distribution"]

    A --> K{"Cost Model"}

    K --> L["CapEx"]
    K --> M["OpEx"]
```

### Cloud Benefits

```mermaid
flowchart LR

    HA["High Availability"] --> HA1["Keep services available"]

    SC["Scalability"] --> SC1["Increase capacity"]

    EL["Elasticity"] --> EL1["Automatically adjust capacity"]

    GEO["Geo-distribution"] --> GEO1["Serve users across geographic locations"]
```

## Azure Resource Hierarchy

```mermaid
flowchart TD

    MG["Management Group"]
    SUB["Subscription"]
    RG["Resource Group"]
    RES["Resource"]

    MG --> SUB
    SUB --> RG
    RG --> RES
```

### Responsibility of Each Level

| Level | Main Purpose |
|---|---|
| Management Group | Organize multiple subscriptions |
| Subscription | Billing, quotas, and governance boundary |
| Resource Group | Organize related resources |
| Resource | Actual Azure service instance |

Azure Resource Manager provides the management layer used to create, update, and delete Azure resources.

## Azure Global Infrastructure

```mermaid
flowchart TD

    GEO["Geography"] --> REG["Region"]

    REG --> AZ1["Availability Zone"]
    REG --> AZ2["Availability Zone"]
    REG --> AZ3["Availability Zone"]

    REG --> RP["Associated Region / Region Pair"]
```

### Infrastructure Concepts

```mermaid
flowchart LR

    GEO["Geography"] --> GEO1["Data residency / compliance boundary"]

    REG["Region"] --> REG1["Deployment location"]

    AZ["Availability Zone"] --> AZ1["Datacenter-level isolation within a Region"]

    RP["Region Pair"] --> RP1["Associated Azure Regions used by some services for resiliency"]
```

Not every Azure Region has a Region Pair.

## Compute

```mermaid
flowchart TD

    A["Need Compute?"] --> B{"What type?"}

    B -->|Full OS control| VM["Azure Virtual Machines"]

    VM --> VMSS["VM Scale Sets"]

    B -->|Managed web platform| APP["Azure App Service"]

    B -->|Event-driven code| FUNC["Azure Functions"]

    B -->|Containers| C{"Need Kubernetes?"}

    C -->|No| ACI["Azure Container Instances"]

    C -->|Yes| AKS["Azure Kubernetes Service"]
```

### Compute Selection

| Requirement | Service |
|---|---|
| OS control | Azure Virtual Machines |
| Scalable group of VMs | VM Scale Sets |
| Managed web application platform | Azure App Service |
| Event-driven serverless code | Azure Functions |
| Simple container execution | Azure Container Instances |
| Kubernetes orchestration | Azure Kubernetes Service |

## Networking

```mermaid
flowchart TD

    VNET["Virtual Network"]

    VNET --> NSG["Network Security Group"]

    VNET --> PEER["VNet Peering"]

    VNET --> VPN["VPN Gateway"]

    VNET --> BASTION["Azure Bastion"]

    VPN --> LNG["Local Network Gateway"]

    ONPREM["On-premises Network"] --> VPN

    ONPREM --> ER["ExpressRoute"]

    PEER --> VNET2["Another Virtual Network"]
```

### Networking Concepts

| Requirement | Service |
|---|---|
| Private Azure network | Virtual Network |
| Filter network traffic | Network Security Group |
| Connect Azure VNets | VNet Peering |
| Encrypted VPN connectivity | VPN Gateway |
| Private connectivity without traversing the public Internet | ExpressRoute |
| Secure RDP / SSH to VMs | Azure Bastion |
| Represent remote or on-premises VPN site | Local Network Gateway |

## Storage

```mermaid
flowchart TD

    SA["Storage Account"]

    SA --> BLOB["Blob Storage"]

    SA --> FILES["Azure Files"]

    SA --> QUEUE["Queue Storage"]

    SA --> TABLE["Table Storage"]

    VM["Virtual Machine"] --> DISK["Managed Disks"]

    BLOB --> HOT["Hot"]

    BLOB --> COOL["Cool"]

    BLOB --> COLD["Cold"]

    BLOB --> ARCHIVE["Archive"]
```

### Storage Selection

| Data Requirement | Service |
|---|---|
| Objects / unstructured data | Blob Storage |
| Shared file system | Azure Files |
| VM block storage | Managed Disks |
| Messages | Queue Storage |
| NoSQL key/attribute data | Table Storage |

### Blob Access Tiers

```mermaid
flowchart TD

    HOT["Hot<br>Frequently accessed"]

    COOL["Cool<br>Infrequently accessed"]

    COLD["Cold<br>Rarely accessed"]

    ARCHIVE["Archive<br>Offline"]

    HOT --> COOL

    COOL --> COLD

    COLD --> ARCHIVE
```

Hot, Cool, and Cold are online tiers.

Archive is an offline tier and requires rehydration before the data can be accessed.

## Identity and Access

```mermaid
flowchart TD

    ENTRA["Microsoft Entra ID"]

    ENTRA --> MFA["Multifactor Authentication"]

    ENTRA --> SSO["Single Sign-On"]

    ENTRA --> CA["Conditional Access"]

    ENTRA --> HYBRID["Hybrid Identity"]

    ENTRA --> RBAC["Azure RBAC"]

    CA --> MFA
```

### Identity Concepts

| Requirement | Service / Concept |
|---|---|
| Identity and authentication | Microsoft Entra ID |
| Authorization to Azure resources | Azure RBAC |
| Additional identity verification | MFA |
| Decide when access controls apply | Conditional Access |
| One sign-in for multiple applications | SSO |
| Common identity across on-premises and cloud | Hybrid Identity |

### Authentication vs Authorization

```mermaid
flowchart LR

    AUTHN["Authentication"] --> WHO["Who are you?"]

    AUTHZ["Authorization"] --> WHAT["What are you allowed to do?"]
```

## Governance

```mermaid
flowchart TD

    GOV["Azure Governance"]

    GOV --> RBAC["Azure RBAC"]

    GOV --> POLICY["Azure Policy"]

    GOV --> LOCKS["Resource Locks"]

    GOV --> TAGS["Resource Tags"]
```

### Governance Selection

| Requirement | Think |
|---|---|
| Who can perform actions? | Azure RBAC |
| What configurations are allowed? | Azure Policy |
| Prevent accidental deletion or modification? | Resource Locks |
| Organize and classify resources? | Resource Tags |

### Governance Mental Model

```mermaid
flowchart LR

    RBAC["Azure RBAC"] --> PERM["Permissions"]

    POLICY["Azure Policy"] --> ENF["Enforcement"]

    LOCKS["Resource Locks"] --> PROT["Protection"]

    TAGS["Resource Tags"] --> ORG["Organization"]
```

## Monitoring and Observability

```mermaid
flowchart TD

    MON["Azure Monitor"]

    MON --> AI["Application Insights"]

    MON --> LOGS["Azure Monitor Logs"]

    LOGS --> LA["Log Analytics"]

    ADV["Azure Advisor"]

    SH["Azure Service Health"]

    RH["Resource Health"]
```

### Monitoring Selection

| Requirement | Service |
|---|---|
| Overall observability | Azure Monitor |
| Application performance | Application Insights |
| Query and analyze logs | Log Analytics |
| Optimization recommendations | Azure Advisor |
| Azure platform incidents and maintenance | Azure Service Health |
| Health of one Azure resource | Resource Health |

### Monitoring Mental Model

```mermaid
flowchart LR

    MON["Azure Monitor"] --> OBS["What is happening?"]

    ADV["Azure Advisor"] --> IMP["What should I improve?"]

    SH["Azure Service Health"] --> AZ["Does Azure have a platform problem?"]
```

## Cost Management

```mermaid
flowchart TD

    COST["Azure Cost"]

    COST --> PC["Pricing Calculator"]

    COST --> CM["Microsoft Cost Management"]

    COST --> OPT["Cost Optimization"]

    OPT --> RES["Reservations"]

    OPT --> SP["Savings Plan"]

    OPT --> SPOT["Spot Virtual Machines"]
```

### Cost Selection

| Requirement | Think |
|---|---|
| Estimate future cost | Azure Pricing Calculator |
| Analyze actual spending | Microsoft Cost Management |
| Stable predictable usage | Azure Reservations |
| Flexible compute commitment | Azure Savings Plan |
| Interruptible workload | Azure Spot Virtual Machines |

## Cloud Service Models

```mermaid
flowchart TD

    A["Need a Cloud Service Model?"] --> B{"What do you need?"}

    B -->|Full OS control| IAAS["IaaS"]

    B -->|Managed platform for your application| PAAS["PaaS"]

    B -->|Ready-to-use application| SAAS["SaaS"]
```

### Service Model Selection

| Model | Example | Key Idea |
|---|---|---|
| IaaS | Azure Virtual Machines | Customer manages the OS |
| PaaS | Azure App Service | Microsoft manages the OS and platform |
| SaaS | Microsoft 365 | Customer uses a ready-to-use application |

## Shared Responsibility

```mermaid
flowchart LR

    MORE["More customer infrastructure responsibility"]

    IAAS["IaaS"]

    PAAS["PaaS"]

    SAAS["SaaS"]

    LESS["Less customer infrastructure responsibility"]

    MORE --> IAAS

    IAAS --> PAAS

    PAAS --> SAAS

    SAAS --> LESS
```

As you move from IaaS to PaaS to SaaS, customer infrastructure management responsibility decreases.

Customer responsibility never becomes zero.

### Customer Responsibilities

```mermaid
flowchart TD

    CUSTOMER["Customer Responsibilities"]

    CUSTOMER --> DATA["Data"]

    CUSTOMER --> ID["Identities and Users"]

    CUSTOMER --> ACCESS["Access Management"]

    CUSTOMER --> CONFIG["Configurations and Settings"]
```

These responsibilities remain important regardless of the cloud service model.

## AZ-900 Big Picture

```mermaid
flowchart TD

    AZ["AZ-900"]

    AZ --> CLOUD["Cloud Concepts"]

    AZ --> ARCH["Azure Architecture"]

    AZ --> SERVICES["Azure Services"]

    AZ --> IAM["Identity and Access"]

    AZ --> GOV["Governance"]

    AZ --> MON["Monitoring"]

    AZ --> COST["Cost Management"]

    AZ --> MODELS["Service Models"]

    SERVICES --> COMPUTE["Compute"]

    SERVICES --> NETWORK["Networking"]

    SERVICES --> STORAGE["Storage"]

    IAM --> ENTRA["Microsoft Entra ID"]

    IAM --> RBAC["Azure RBAC"]

    GOV --> POLICY["Azure Policy"]

    GOV --> LOCKS["Resource Locks"]

    GOV --> TAGS["Resource Tags"]

    MON --> MONITOR["Azure Monitor"]

    MON --> ADVISOR["Azure Advisor"]

    MON --> HEALTH["Azure Service Health"]
```

## Final Mental Model

```mermaid
flowchart TD

    A["What does the scenario need?"]

    A -->|Identity / Authentication| ENTRA["Microsoft Entra ID"]

    A -->|Azure resource permissions| RBAC["Azure RBAC"]

    A -->|Governance enforcement| POLICY["Azure Policy"]

    A -->|Prevent deletion or modification| LOCKS["Resource Locks"]

    A -->|OS-level compute control| VM["Azure Virtual Machines"]

    A -->|Managed web application platform| APP["Azure App Service"]

    A -->|Event-driven code| FUNC["Azure Functions"]

    A -->|Kubernetes orchestration| AKS["Azure Kubernetes Service"]

    A -->|Private Azure network| VNET["Virtual Network"]

    A -->|Filter network traffic| NSG["Network Security Group"]

    A -->|Private on-premises connectivity| ER["ExpressRoute"]

    A -->|Object storage| BLOB["Blob Storage"]

    A -->|Shared files| FILES["Azure Files"]

    A -->|Monitoring / Telemetry| MON["Azure Monitor"]

    A -->|Optimization recommendations| ADV["Azure Advisor"]

    A -->|Azure platform incidents| SH["Azure Service Health"]

    A -->|Estimate future cost| PC["Azure Pricing Calculator"]

    A -->|Analyze actual spending| CM["Microsoft Cost Management"]
```

## Exam Strategy

Do not start with:

> "Which Azure service name do I recognize?"

Start with:

> **"What problem is the scenario trying to solve?"**

Then follow this pattern:

```mermaid
flowchart LR

    R["Requirement"] --> C["Concept"]

    C --> S["Azure Service"]
```

Use the requirement to identify the concept first.

Then map the concept to the correct Azure service.