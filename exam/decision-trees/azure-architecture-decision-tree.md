# Azure Architecture Decision Tree

Start by identifying whether the question is about **organization, location/failure scope, or resource management**.

```mermaid
flowchart TD
    A["What architecture question is being asked?"]
    A --> B["Organization / hierarchy"]
    A --> C["Location / resiliency scope"]
    A --> D["Management layer"]

    B --> B1{"What must be organized?"}
    B1 -->|"Multiple subscriptions"| MG["Management Group"]
    B1 -->|"Billing / quota boundary"| SUB["Subscription"]
    B1 -->|"Related resources"| RG["Resource Group"]
    B1 -->|"Actual deployed item"| RES["Resource"]

    C --> C1{"What scope?"}
    C1 -->|"Market / residency boundary"| GEO["Geography"]
    C1 -->|"Deployment location"| REGION["Region"]
    C1 -->|"Datacenter isolation within region"| AZ["Availability Zone"]
    C1 -->|"Azure paired-region concept"| PAIR["Region Pair"]

    D --> ARM["Azure Resource Manager"]
```

## Resource Hierarchy

```text
Management Group
      ↓
Subscription
      ↓
Resource Group
      ↓
Resource
```

## High-Value Distinctions

```text
Organize subscriptions
→ Management Group

Billing / quota / resource boundary
→ Subscription

Logical resource container
→ Resource Group

Actual deployed instance
→ Resource

Geographic deployment location
→ Region

Datacenter isolation within a region
→ Availability Zone

Relationship between two Azure regions
→ Region Pair

Deployment and management layer
→ Azure Resource Manager
```

## Common Architecture Traps

```text
Resource Group location
≠ all resources must be in that region

Availability Zone
≠ separate Azure region

Regional DR requirement
≠ automatically "Region Pair" for every architecture
```

## Final Decision Rule
Identify **what is being organized**, **the geographic/failure scope**, or **whether the question is about Azure's management layer**.
