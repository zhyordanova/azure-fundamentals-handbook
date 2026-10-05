# Targeted Trap Round 02 — Post-Mock 02 Remediation

**Phase:** 6.7  
**Status:** Complete  
**Questions:** 6  
**Score:** **5 / 6 (83.3%)**

> Full question archive for the second targeted trap round. Every question, answer option, submitted answer, correct answer, and result is preserved.

## Retested Areas

```text
Azure Arc vs Azure Migrate
Availability Zone vs Sovereign Region
Region vs Availability Zone vs Region Pair
Spot vs Reservation vs Savings Plan vs Pay-as-you-go
LRS vs ZRS vs GRS vs GZRS
```

## Question 1

**Single choice — Azure Arc vs Azure Migrate**

A company has servers running:

- in its on-premises datacenter;
- in Azure;
- with another cloud provider.

The company does **not** want to move the existing servers to Azure.

Instead, it wants to use Azure to apply **management and governance capabilities** to those resources while they remain in their current locations.

Which service is the **best fit**?

**A.** Azure Migrate  
**B.** Azure Arc  
**C.** Azure Data Box  
**D.** Azure Resource Manager

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
KEEP resources where they are
+
manage on-premises / multicloud through Azure
→ Azure Arc
```

## Question 2

**Single choice — Azure Arc vs Azure Migrate**

A company plans to move a group of existing on-premises servers to Azure.

Before the migration begins, the company needs to:

- discover the servers;
- assess whether they are ready for Azure;
- analyze dependencies;
- estimate appropriate Azure sizing;
- plan the migration.

Which service is the **best fit**?

**A.** Azure Arc  
**B.** Azure Migrate  
**C.** Azure File Sync  
**D.** Azure Monitor

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

```text
DISCOVER
ASSESS
SIZE
PLAN MIGRATION
→ Azure Migrate
```

## Question 3

**Single choice — Availability Zone vs Sovereign Region**

A financial organization must deploy an Azure workload in a **separate cloud environment designed to meet specific national regulatory and data-residency requirements**.

The requirement is **not** about protecting the application from the failure of a datacenter within a standard Azure region.

Which concept is the **best fit**?

**A.** Availability Zone  
**B.** Region Pair  
**C.** Sovereign cloud / region  
**D.** Resource Group

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

### Decision Rule

```text
National / regulatory isolation
→ Sovereign cloud / region

Datacenter-level failure
+
same Azure region
→ Availability Zone
```

## Question 4

**Matching — Region vs Availability Zone vs Region Pair**

Match each requirement to the **best Azure architecture concept**.

1. Choose the geographic location where Azure resources are deployed  
2. Protect against failure of a physically separate datacenter location **within the same region**  
3. Describe a relationship between **two Azure regions**

Options:

**A.** Region Pair  
**B.** Azure Region  
**C.** Availability Zone

**My Answer:** 1B, 2C, 3A  
**Correct Answer:** 1B, 2C, 3A  
**Result:** ✅

### Decision Rule

```text
Deployment location
→ Region

Datacenter isolation within a region
→ Availability Zone

Relationship between two regions
→ Region Pair
```

## Question 5

**Single choice — Cost Optimization Best Fit**

A company runs a production compute workload with **predictable usage**.

The company:

- cannot tolerate interruptions or eviction;
- is willing to commit to a consistent amount of compute spending;
- wants flexibility across eligible compute services rather than committing to a specific VM configuration.

Which pricing option is the **best fit**?

**A.** Spot VMs  
**B.** Azure Reservations  
**C.** Savings Plan for Compute  
**D.** Pay-as-you-go

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

### Decision Rule

```text
Interruptible
→ Spot VMs

Stable + specific commitment
→ Reservations

Predictable compute
+
flexible commitment
→ Savings Plan for Compute

Uncertain usage
+
no commitment
→ Pay-as-you-go
```

## Question 6

**Single choice — Storage Redundancy Best Fit**

A company stores critical data in Azure Storage.

The requirements are:

- protect against the failure of an **Availability Zone** in the primary region;
- also replicate the data to a **secondary Azure region** for regional disaster protection.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS

**My Answer:** C — GRS  
**Correct Answer:** D — GZRS  
**Result:** ❌

### Decision Rule

```text
LRS
→ local redundancy

ZRS
→ Availability Zones in one region

GRS
→ secondary region replication

GZRS
→ Availability Zones
+
secondary region
```

The requirement explicitly asks for **both** zone protection and secondary-region replication.

> **When the requirement combines two redundancy scopes, choose the option that provides both.**

# Result Summary

| # | Retested Area | Result |
|---:|---|:---:|
| 1 | Azure Arc vs Azure Migrate | ✅ |
| 2 | Azure Arc vs Azure Migrate | ✅ |
| 3 | Availability Zone vs Sovereign Region | ✅ |
| 4 | Region / Availability Zone / Region Pair | ✅ |
| 5 | Spot / Reservation / Savings Plan / PAYG | ✅ |
| 6 | LRS / ZRS / GRS / GZRS | ❌ |

## Final Score

```text
5 / 6
→ 83.3%
```

# Weak-Area Status After Round 02

```text
CORRECTED
→ Azure Arc vs Azure Migrate
→ Availability Zone vs Sovereign Region
→ Region vs Availability Zone vs Region Pair
→ Spot vs Reservation vs Savings Plan vs Pay-as-you-go

RECURRING
→ Storage Redundancy Best Fit
```

The storage redundancy issue remains active because two different scenarios exposed two different mistakes:

```text
Zones + secondary region
→ GZRS

Zones only
→ ZRS
```

The remaining weak point is recognizing **which redundancy scopes are simultaneously required**.

# Next Step

Before Mock 3, complete a short **3-question Storage Redundancy Micro-Trap** covering:

```text
LRS
ZRS
GRS
GZRS
```

The questions should use different combinations of:

```text
local protection
zone protection
secondary-region replication
zone + secondary region
```

> **Do not memorize the letters. Identify the required failure scope(s) first.**
