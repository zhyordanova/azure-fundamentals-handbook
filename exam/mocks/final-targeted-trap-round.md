# Final Targeted Trap Round

**Status:** Complete  
**Questions:** 8  
**Score:** **7 / 8 (87.5%)**


## Question 1

Custom web app requires OS-level component installation, OS configuration changes, and full server administration. Best service?

**A.** Azure App Service
**B.** Azure Functions
**C.** Azure Virtual Machine
**D.** Azure Container Instances

**My Answer:** C  
**Correct Answer:** C  
**Result:** ✅

### Decision Rule

Need OS control → VM / IaaS.

## Question 2

Developers manage web app code/data but need no OS access; Microsoft should manage OS and hosting platform. Best service?

**A.** Azure Virtual Machine
**B.** Azure App Service
**C.** Azure Virtual Desktop
**D.** VM Scale Sets

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

No OS management → App Service / PaaS.

## Question 3

Label resources with Department, Environment, Owner for categorization/filtering/cost reporting; no enforcement required. Best feature?

**A.** Azure Policy
**B.** Resource Tags
**C.** Azure RBAC
**D.** Resource Locks

**My Answer:** A  
**Correct Answer:** B  
**Result:** ❌

### Decision Rule

Store/add metadata → Tags. Require/enforce metadata → Policy.

## Question 4

Every newly deployed resource must include CostCenter tag and be evaluated against governance rule. Best feature?

**A.** Resource Tags
**B.** Azure Policy
**C.** Azure RBAC
**D.** CanNotDelete lock

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

Enforce a resource requirement → Azure Policy.

## Question 5

Same VM configuration continuously, stable for years, no interruptions, long-term commitment, no flexibility needed. Best pricing?

**A.** Spot VMs
**B.** Azure Reservations
**C.** Savings Plan
**D.** Pay-as-you-go

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

Stable specific configuration → Reservation.

## Question 6

Predictable compute, commitment, but flexibility across eligible compute services/configurations required. Best pricing?

**A.** Reservations
**B.** Savings Plan for Compute
**C.** Spot VMs
**D.** Pay-as-you-go

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

Predictable compute + flexible commitment → Savings Plan.

## Question 7

Discover, classify, and govern the organization's data estate. Best service?

**A.** Service Trust Portal
**B.** Microsoft Purview
**C.** Defender for Cloud
**D.** Azure Policy

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

Your organization's data estate → Purview.

## Question 8

Need Microsoft's audit reports, compliance documentation, and regulatory information; not own data governance. Best resource?

**A.** Purview
**B.** Service Trust Portal
**C.** Azure Policy
**D.** Defender for Cloud

**My Answer:** B  
**Correct Answer:** B  
**Result:** ✅

### Decision Rule

Microsoft compliance evidence → Service Trust Portal.

# Result Summary

| Metric | Result |
|---|---:|
| Correct | **7 / 8** |
| Incorrect | **1 / 8** |
| Score | **87.5%** |

```text
CORRECTED
→ VM / IaaS vs App Service / PaaS
→ Reservations vs Savings Plan
→ Purview vs Service Trust Portal

RECURRING — UNRESOLVED
→ Resource Tags vs Azure Policy
```
