# Shared Responsibility Model

## Definition

The Shared Responsibility Model explains how security and management responsibilities are divided between the cloud provider and the customer.

The amount of customer responsibility changes depending on the service model.

```text
MORE CUSTOMER RESPONSIBILITY

On-premises
     ↓
IaaS
     ↓
PaaS
     ↓
SaaS

LESS CUSTOMER RESPONSIBILITY
```

## Responsibility Comparison

| Responsibility | On-premises | IaaS | PaaS | SaaS |
|---|:---:|:---:|:---:|:---:|
| Physical datacenter | Customer | Microsoft | Microsoft | Microsoft |
| Physical network / hosts | Customer | Microsoft | Microsoft | Microsoft |
| Operating system | Customer | **Customer** | **Microsoft** | **Microsoft** |
| Application platform | Customer | Customer | Microsoft | Microsoft |
| Application software | Customer | Customer | Customer | Microsoft |
| Data | Customer | Customer | Customer | Customer responsibility remains |
| Identities / access | Customer | Customer | Customer | Customer responsibility remains |

For AZ-900, the most important shift is the operating system:

```text
On-premises / IaaS
→ Customer manages OS

PaaS / SaaS
→ Provider manages OS
```

## Responsibilities That Remain with the Customer

Moving to a managed cloud service does not remove all customer responsibility.

Customers continue to have responsibilities involving areas such as:

- data;
- identities and users;
- access management;
- devices/endpoints where applicable;
- appropriate configuration of the services they use.

The provider managing more infrastructure does not mean the customer stops protecting its data and identities.

## Service Model Classification

For exam questions, classify the service by asking what the customer receives and manages.

| Example | Service Model |
|---|---|
| Azure Virtual Machines | **IaaS** |
| Azure App Service | **PaaS** |
| Azure SQL Database | **PaaS** |
| Azure Functions | **PaaS / serverless compute** |
| Microsoft 365 | **SaaS** |

Scenario classification:

```text
Virtual server + manage OS
→ IaaS

Build/deploy app + provider manages OS
→ PaaS

Use finished application
→ SaaS
```

## Decision Factors

Use these questions in order:

```text
1. Is the customer simply using a finished application?
   → SaaS

2. Does the customer need to build/deploy an application
   without managing the OS?
   → PaaS

3. Does the customer need control over the OS?
   → IaaS
```

Then check the responsibility being tested.

```text
Who manages the OS?
Who manages the application?
Who remains responsible for data and access?
```

## Common Exam Traps

### SaaS Does Not Mean Zero Customer Responsibility

```text
Provider manages most of stack
≠
Provider owns every responsibility
```

Data, identities, and access still require customer responsibility.

### PaaS vs SaaS

```text
BUILD
→ PaaS

USE
→ SaaS
```

### IaaS vs PaaS

```text
Customer manages OS
→ IaaS

Provider manages OS
→ PaaS
```

## Exam Reasoning

When asked to classify a service or scenario:

```text
CONTROL OS
→ IaaS

BUILD APP, NOT INFRASTRUCTURE
→ PaaS

USE FINISHED APP
→ SaaS
```

When asked about responsibility:

```text
More managed service
→ less infrastructure responsibility for customer

But customer responsibility for data / identities / access remains
```
