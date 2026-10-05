# Tags vs Policy Micro-Trap

**Phase:** 6 — Final Targeted Remediation  
**Status:** Complete  
**Questions:** 3  
**Score:** **3 / 3 (100%)**

> Focused retest for the recurring Resource Tags vs Azure Policy distinction.

---

## Question 1

**Single choice — Metadata**

An organization wants to add the following information to Azure resources:

```text
Department = Finance
Owner = PaymentsTeam
Environment = Production
```

The information will be used only for **resource organization, filtering, and cost reporting**.

There is no requirement to make the values mandatory.

Which Azure feature is the **best fit**?

**A.** Azure Policy  
**B.** Resource Tags  
**C.** Azure RBAC  
**D.** Resource Lock

**My Answer:** B — Resource Tags  
**Correct Answer:** B — Resource Tags  
**Result:** ✅

### Decision Rule

```text
STORE / ADD metadata
→ Resource Tags
```

---

## Question 2

**Single choice — Governance Enforcement**

A company requires that **every newly created Azure resource must contain an `Owner` tag**.

The organization wants Azure to **evaluate resources against this requirement** and identify or prevent noncompliant deployments according to the configured governance rule.

Which Azure feature is the **best fit**?

**A.** Resource Tags  
**B.** Azure Policy  
**C.** Azure RBAC  
**D.** CanNotDelete Resource Lock

**My Answer:** B — Azure Policy  
**Correct Answer:** B — Azure Policy  
**Result:** ✅

### Decision Rule

```text
MUST / REQUIRE / ENFORCE / COMPLY
→ Azure Policy
```

---

## Question 3

**Single choice — Best-fit Trap**

A company already has Azure resources with tags such as `Department`, `Project`, and `Environment`.

The finance team wants to use those values to **group resources and analyze costs by department**.

No new governance rule needs to be created, and the company does **not** need to validate whether every resource has a tag.

Which Azure feature is being used for this purpose?

**A.** Azure Policy  
**B.** Resource Tags  
**C.** Azure RBAC  
**D.** Resource Locks

**My Answer:** B — Resource Tags  
**Correct Answer:** B — Resource Tags  
**Result:** ✅

### Decision Rule

```text
USE existing metadata
for grouping / filtering / cost analysis
→ Resource Tags
```

---

# Final Mental Model

```text
Department = Finance
→ Tag

CostCenter = 123
→ Tag

Group costs by Department
→ Tags

Filter resources by Environment
→ Tags


Every resource MUST have Department
→ Policy

Only approved values are allowed
→ Policy

Evaluate resources for compliance
→ Policy
```

---

# Result Summary

| # | Scenario | Correct Answer | Result |
|---:|---|---|:---:|
| 1 | Add metadata for organization, filtering, and cost reporting | **Resource Tags** | ✅ |
| 2 | Require every resource to contain a tag | **Azure Policy** | ✅ |
| 3 | Use existing metadata for grouping and cost analysis | **Resource Tags** | ✅ |

## Final Score

```text
3 / 3
→ 100%
```

---

# Weak-Area History

```text
Mock 1
→ Tags ❌

Trap Round 1
→ corrected ✅

Mock 2
→ Tags ✅
→ Policy ✅

Mock 3
→ Tags ❌

Final Targeted Trap Round
→ Tags ❌
→ Policy ✅

Tags vs Policy Micro-Trap
→ Tags ✅
→ Policy ✅
→ Tags ✅
```

## Final Status

```text
Before
→ RECURRING — UNRESOLVED

After targeted 3/3
→ CORRECTED
```

There are currently no unresolved `ACTIVE` or `RECURRING` weaknesses from the Phase 6 mock sequence.

---

# Next Step

Proceed to:

```text
Phase 6.8
→ Final Readiness Review
```

> **STORE metadata → Tags. ENFORCE a rule → Policy.**
