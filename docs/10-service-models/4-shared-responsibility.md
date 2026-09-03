# Shared Responsibility Model

## Definition

The shared responsibility model explains how security, management, and operational responsibilities are divided between the cloud provider and the customer.

As you move from on-premises infrastructure toward more managed cloud services, Microsoft manages more of the underlying technology and the customer manages less of the infrastructure stack.

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

---

## Responsibility Comparison

| Responsibility | On-premises | IaaS | PaaS | SaaS |
|---|:---:|:---:|:---:|:---:|
| Physical datacenter | Customer | Microsoft | Microsoft | Microsoft |
| Physical network | Customer | Microsoft | Microsoft | Microsoft |
| Physical hosts | Customer | Microsoft | Microsoft | Microsoft |
| Operating system | Customer | **Customer** | **Microsoft** | **Microsoft** |
| Application | Customer | Customer | **Customer** | Microsoft |
| Data | Customer | Customer | Customer | Customer responsibility remains |
| Identities and access | Customer | Customer | Customer | Customer responsibility remains |

The most useful AZ-900 distinction is operating-system responsibility:

```text
Customer manages OS
→ On-premises / IaaS

Microsoft manages OS
→ PaaS / SaaS
```

---

## Responsibilities That Remain With the Customer

Using a more managed service does **not** remove all customer responsibility.

Even with SaaS, customers still have responsibilities related to areas such as:

- data;
- identities and users;
- access management;
- endpoints and devices.

Therefore:

> **SaaS does not mean Microsoft is responsible for everything.**

---

## Quick Service Model Classification

Use this table as a fast classification reference.

| Example | Service Model |
|---|---|
| Azure Virtual Machines | **IaaS** |
| Azure App Service | **PaaS** |
| Azure SQL Database | **PaaS** |
| Azure Functions | **PaaS** |
| Microsoft 365 | **SaaS** |

For scenario questions:

```text
Virtual server + customer manages OS
→ IaaS

Build/deploy application + provider manages OS
→ PaaS

Use a finished application
→ SaaS
```

---

## Common Exam Traps

### More Managed Does Not Mean More Customer Control

Moving from IaaS to PaaS to SaaS generally means:

```text
Less infrastructure responsibility
+
Less infrastructure control
```

## Exam Reasoning

For shared-responsibility questions, first identify **which layer is being discussed**.

```text
Physical infrastructure?
→ Microsoft in IaaS / PaaS / SaaS

Operating system?
→ Customer in IaaS
→ Microsoft in PaaS / SaaS

Application?
→ Customer in IaaS / PaaS
→ Provider in SaaS

Data / identities / access?
→ Customer responsibility remains
```

Then remember the overall direction:

> **IaaS → more customer control and responsibility**  
> **PaaS → provider manages the platform**  
> **SaaS → provider manages most of the service stack**
