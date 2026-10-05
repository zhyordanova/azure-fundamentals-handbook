# Targeted Trap Round 01 — Post-Baseline Remediation

**Phase:** 6.7  
**Status:** Complete  
**Questions:** 8  
**Score:** **8 / 8 (100%)**

> Targeted retest created from the weak areas identified in Mock 01.  
> The questions use different wording and scenarios rather than repeating the baseline questions.

## Retested Areas

```text
IaaS Shared Responsibility
VPN Gateway vs ExpressRoute
Availability Zone vs Sovereign Region
Cloud Shell vs Azure Portal
Azure Resource Hierarchy
Resource Tags vs Azure Policy
Resource Tags + Resource Locks
```

## Question 1

**Choose TWO answers — Shared Responsibility**

A company hosts an application on an **Azure virtual machine**.

Which **TWO** components are the **customer's responsibility** in the IaaS shared responsibility model?

**A.** Physical servers in the Azure datacenter  
**B.** Guest operating system installed on the VM  
**C.** Physical networking infrastructure  
**D.** Applications installed inside the VM  
**E.** Datacenter power and cooling

**My Answer:** B, D  
**Correct Answer:** B, D  
**Result:** ✅

### Decision Rule

```text
IaaS

Microsoft
→ physical infrastructure

Customer
→ guest operating system
→ applications
→ data
```

## Question 2

**Single choice — Shared Responsibility**

A company runs a database application on an **Azure virtual machine**.

A critical security update becomes available for the **guest operating system** installed on that VM.

Who is responsible for installing the operating system update?

**A.** Microsoft, because Azure owns the physical server  
**B.** Microsoft, because the VM runs in an Azure datacenter  
**C.** The customer, because the guest operating system is the customer's responsibility in IaaS  
**D.** Responsibility is shared equally between Microsoft and the customer

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

### Decision Rule

```text
IaaS guest operating system
→ Customer responsibility

OS configuration and patching
→ Customer
```

## Question 3

**Single choice — Networking Best Fit**

A company must connect its on-premises datacenter to Azure.

The requirements are:

- traffic must use an **encrypted connection**;
- using the **public internet is acceptable**;
- the company does **not** require a dedicated private circuit;
- the solution should avoid the additional requirements of a dedicated connection.

Which option is the **best fit**?

**A.** ExpressRoute  
**B.** VPN Gateway  
**C.** VNet Peering  
**D.** Azure Bastion

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
Encrypted connection
+
public Internet acceptable
→ VPN Gateway

Dedicated private connectivity
+
avoid public Internet
→ ExpressRoute
```

## Question 4

**Single choice — Azure Architecture**

An application is deployed in an Azure region that supports multiple physically separate datacenter locations.

The company wants the application to remain available if **one datacenter location within that region fails**, without moving the workload to another Azure region.

Which concept is the **best fit**?

**A.** Sovereign Region  
**B.** Region Pair  
**C.** Availability Zone  
**D.** Management Group

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

### Decision Rule

```text
Datacenter-level failure
+
remain inside the same Azure region
→ Availability Zone

National / governmental / regulatory isolation
→ Sovereign cloud / region
```

## Question 5

**Single choice — Azure Management Tools**

An administrator needs to run **Azure PowerShell commands from a web browser** while using a computer where Azure PowerShell is **not installed locally**.

Which option is the **best fit**?

**A.** Azure Portal  
**B.** Azure Cloud Shell  
**C.** Azure Arc  
**D.** ARM Template

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
Graphical browser management
→ Azure Portal

Browser-hosted command environment
→ Azure Cloud Shell

Azure CLI / Azure PowerShell
→ command-line tools
```

## Question 6

**Matching — Azure Resource Hierarchy**

Match each requirement to the **correct Azure scope or object**.

1. Organize multiple Azure subscriptions  
2. Provide a billing and quota boundary that contains Resource Groups  
3. Logically group related Azure resources  
4. Represent an individual deployed instance such as a VM

Options:

**A.** Resource  
**B.** Resource Group  
**C.** Subscription  
**D.** Management Group

**My Answer:** 1D, 2C, 3B, 4A  
**Correct Answer:** 1D, 2C, 3B, 4A  
**Result:** ✅

### Decision Rule

```text
Management Group
↓
Subscription
↓
Resource Group
↓
Resource
```

```text
Multiple subscriptions
→ Management Group

Billing / quota boundary
→ Subscription

Logical resource container
→ Resource Group

Individual deployed instance
→ Resource
```

## Question 7

**Single choice — Tags vs Policy**

A company wants every newly deployed Azure resource to include a `CostCenter` tag.

Resources that do not meet this organizational requirement should be identified or prevented according to the configured governance rule.

Which Azure feature is the **best fit**?

**A.** Resource Tags  
**B.** Azure Policy  
**C.** Azure RBAC  
**D.** Resource Lock

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
STORE / ADD metadata
→ Resource Tags

REQUIRE / ENFORCE metadata
→ Azure Policy
```

## Question 8

**Single choice — Mixed Best-Fit Trap**

A company has an Azure virtual machine used by the Finance department.

The requirements are:

- the VM should be labeled `Department = Finance` for **cost reporting**;
- administrators must still be able to modify the VM;
- accidental deletion of the VM must be prevented.

Which combination is the **best fit**?

**A.** Azure Policy + ReadOnly lock  
**B.** Resource Tag + CanNotDelete lock  
**C.** Azure RBAC + ReadOnly lock  
**D.** Resource Tag + Azure Policy

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
Department = Finance
for categorization / cost reporting
→ Resource Tag

Prevent deletion
but allow modification
→ CanNotDelete Resource Lock
```

# Result Summary

| # | Retested Weakness | Result |
|---:|---|:---:|
| 1 | IaaS — guest OS + applications | ✅ |
| 2 | IaaS — guest OS patching | ✅ |
| 3 | VPN Gateway vs ExpressRoute | ✅ |
| 4 | Availability Zone vs Sovereign Region | ✅ |
| 5 | Cloud Shell vs Azure Portal | ✅ |
| 6 | Azure resource hierarchy | ✅ |
| 7 | Resource Tags vs Azure Policy | ✅ |
| 8 | Tags + Resource Locks mixed scenario | ✅ |

## Final Score

```text
8 / 8
→ 100%
```

# Weak-Area Status After Retest

```text
CORRECTED
→ IaaS Shared Responsibility
→ VPN Gateway vs ExpressRoute
→ Availability Zone vs Sovereign Region
→ Cloud Shell vs Azure Portal
→ Azure Resource Hierarchy
→ Resource Tags vs Azure Policy

ACTIVE
→ none

RECURRING unresolved
→ none
```

The IaaS Shared Responsibility pattern had previously reached **RECURRING** status. It was therefore tested twice in this round and both variants were answered correctly.

It should still appear again with different wording in a future mixed mock.

# Next Step

Proceed to:

```text
Mock 02
→ Decision & Trap Exam
→ 30 questions
```

> **Corrected does not mean forgotten. Previously weak concepts remain candidates for future mixed-mock retesting.**
