# Storage Redundancy Micro-Trap

**Phase:** 6 — Targeted Remediation  
**Status:** Complete  
**Questions:** 3  
**Score:** **3 / 3 (100%)**

> Focused retest for the recurring Storage Redundancy Best-Fit weakness identified after Mock 02 and Targeted Trap Round 02.

## Focus

For every scenario, identify the required **failure scope** first:

```text
Local
Zones
Secondary region
Zones + Secondary region
```

## Question 1

**Single choice — Best fit**

A company stores data in Azure Storage.

The requirements are:

- protect the data if an **Availability Zone in the primary region fails**;
- all copies must remain within the **same Azure region**;
- replication to a secondary region is **not required**.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS

**My Answer:** B — ZRS  
**Correct Answer:** B — ZRS  
**Result:** ✅

### Decision Rule

```text
Zone protection
+
same Azure region
+
no secondary-region requirement
→ ZRS
```

## Question 2

**Single choice — Best fit**

A company stores critical data in Azure Storage.

The requirements are:

- replicate the data to a **secondary Azure region**;
- regional disaster protection is required;
- **Availability Zone protection within the primary region is not required**.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS

**My Answer:** C — GRS  
**Correct Answer:** C — GRS  
**Result:** ✅

### Decision Rule

```text
Secondary-region replication
+
no zone requirement
→ GRS
```

## Question 3

**Single choice — Best fit**

A company stores business-critical data in Azure Storage.

The requirements are:

- protect against an **Availability Zone failure** in the primary region;
- replicate the data to a **secondary Azure region** for regional disaster protection.

Which redundancy option is the **best fit**?

**A.** LRS  
**B.** ZRS  
**C.** GRS  
**D.** GZRS

**My Answer:** D — GZRS  
**Correct Answer:** D — GZRS  
**Result:** ✅

### Decision Rule

```text
Zone protection
+
secondary-region replication
→ GZRS
```

# Final Mental Model

```text
LRS
→ Local

ZRS
→ Zones

GRS
→ Secondary Region

GZRS
→ Zones + Secondary Region
```

For scenario questions:

```text
What failure scope is required?

LOCAL only
→ LRS

ZONE failure
→ ZRS

REGIONAL disaster
→ GRS

ZONE + REGIONAL disaster
→ GZRS
```

# Result Summary

| Question | Requirement | Correct Answer | Result |
|---:|---|---|:---:|
| 1 | Zone protection, same region | **ZRS** | ✅ |
| 2 | Secondary-region protection, no zone requirement | **GRS** | ✅ |
| 3 | Zone + secondary-region protection | **GZRS** | ✅ |

## Final Score

```text
3 / 3
→ 100%
```

## Weak-Area Status

```text
Before
→ Storage Redundancy Best Fit
→ RECURRING

After targeted 3/3
→ CORRECTED
```

Storage redundancy should still be retested with different wording in the Final Readiness Mock because it previously became a recurring weakness.

# Next Step

Proceed to:

```text
Mock 03
→ Final Readiness Exam
→ 40 questions
```

> **Identify the required failure scope first. Then choose the redundancy option.**
