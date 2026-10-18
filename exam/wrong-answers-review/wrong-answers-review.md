# Wrong Answers Review

> Review mistakes by **reasoning pattern**, not by memorizing answer letters.

This file contains mistakes and traps identified during the handbook mock sessions.

A topic moves from **Active Weak Areas** to **Corrected Weak Areas** only after a successful targeted trap round.

## How to Use This File

Before a mixed mock:

1. Review **Active Weak Areas** first.
2. Review **Real Exam Memory Traps** second.
3. Skim **Corrected Weak Areas** to confirm the reasoning still feels automatic.
4. Do not memorize answer letters. Reconstruct the decision rule.

```text
What did I confuse?
↓
Why was my reasoning wrong?
↓
What distinction decides the answer?
```

---

## Active Weak Areas

```text
ACTIVE
→ none

RECURRING — UNRESOLVED
→ none
```

All weaknesses identified during the completed Phase 6 mixed-mock sequence have passed targeted remediation.

## Corrected Weak Areas

### Identity — Owner vs Contributor

**Incorrect reasoning**

```text
Contributor can manage resources
+
Owner is read-only
```

**Correct reasoning**

```text
Reader
→ view resources

Contributor
→ manage resources
→ cannot manage Azure RBAC role assignments

Owner
→ manage resources
→ manage Azure RBAC role assignments
```

**Decision rule**

> **Owner = Resources + Access. Contributor = Resources, not Access.**

**Status:** Identity main mock → incorrect; targeted trap round → corrected.

### Identity — Hybrid Identity vs SSO

**Question pattern:** Employees use the same identity across on-premises and Microsoft cloud environments.

**Incorrect answer:** SSO

**Correct reasoning**

```text
WHERE does the same identity work?
→ Hybrid Identity

HOW OFTEN must the user authenticate?
→ SSO
```

**Decision rule**

> **On-premises + cloud identity → Hybrid Identity. One sign-in for multiple applications → SSO.**

**Status:** Identity main mock → incorrect; targeted trap round → corrected.

### Service Models — Microsoft 365 Classification

**Incorrect classification**

```text
Microsoft 365
→ IaaS
```

**Correct classification**

```text
Microsoft 365
→ SaaS
```

**Decision rule**

```text
Manage OS / virtual server
→ IaaS

Build or deploy application while provider manages OS
→ PaaS

Use finished application
→ SaaS
```

**Status:** Service Models main mock → incorrect; targeted trap round → corrected.

### Service Models — SaaS Shared Responsibility

**Incorrect reasoning**

```text
SaaS
→ customer has no data/security responsibility

IaaS guest OS
→ Microsoft manages it
```

**Correct reasoning**

```text
IaaS guest OS
→ Customer

PaaS operating system
→ Microsoft

SaaS application/platform
→ Microsoft

Customer data / identities / access responsibilities
→ remain relevant
```

**Decision rule**

> **SaaS means less customer infrastructure responsibility, not zero customer responsibility.**

**Status:** Service Models main mock → incorrect; targeted trap round → corrected.

## Real Exam Memory Traps

These patterns came from exam/practice-exam memories discussed during preparation. The exact original wording was not available, so this section records the **reasoning pattern**, not a reconstructed question as fact.

### RBAC — Who Can Manage an Existing Role Assignment?

Do not focus on:

```text
Who created the assignment?
```

Use:

```text
Does the user have permission to manage role assignments?
+
Does that permission apply at the relevant scope?
```

```text
Owner
→ resources + access

Contributor
→ resources, NOT role assignments

User Access Administrator
→ access

Role Based Access Control Administrator
→ RBAC access
```

> **Permission + Scope determine who can manage the assignment.**

### Governance — "Administrative Actions"

Do not reason:

```text
"administrative"
→ automatically RBAC
```

Instead:

```text
WHO is authorized?
→ Azure RBAC

WHAT configuration is allowed?
→ Azure Policy

Protect resource from deletion/modification?
→ Resource Lock
```

```text
CanNotDelete
→ modify YES
→ delete NO

ReadOnly
→ modify NO
→ delete NO
```

> **The word "administrator" does not decide the answer. The requirement does.**

### Storage — What Can Change After Creation?

```text
Blob access tier
→ can change

Default online access tier
→ can change

Storage account name
→ cannot simply be renamed

Storage account region
→ cannot be directly changed in place
```

Archive reminder:

```text
Archive
→ offline

Need normal access
→ rehydrate to an online tier
```

> **Separate configurable settings from resource identity and placement.**

## Chapter Mock Record

| Chapter | Main Mock | Targeted Trap Round | Current Status |
|---|---:|---:|---|
| Networking | 5/5 | Not required | **Stable** |
| Compute | 8/10 | 3/3 | **Corrected** |
| Monitoring | 10/10 | Not required | **Stable** |
| Storage | 12/12 | Not required | **Stable** |
| Identity | 10/12 | 3/3 | **Corrected** |
| Governance | 12/12 | Not required | **Stable** |
| Cost Management | 12/12 | Not required | **Stable** |
| Service Models | 8/10 | 3/3 | **Corrected** |

## Patterns to Recheck in Full Mixed Mocks

| Pattern | Decision Rule |
|---|---|
| Owner vs Contributor | **Owner = resources + access; Contributor = resources only** |
| Role assignment management | **Permission + scope, not creator** |
| Hybrid Identity vs SSO | **Where identity works vs how often user signs in** |
| SaaS responsibility | **Less customer responsibility ≠ zero responsibility** |
| IaaS guest OS | **Customer manages it** |
| Microsoft 365 | **SaaS** |
| Administrative actions | **Interpret the requirement, not the word administrator** |
| CanNotDelete vs ReadOnly | **Delete only vs modify + delete protection** |
| Storage changeability | **Configuration may change; identity/placement may not** |

## Phase 6 Mixed-Mock Record

| Assessment | Result | Main Outcome |
|---|---:|---|
| Mock 1 — Baseline | **34/40 — 85%** | Initial mixed weaknesses identified |
| Trap Round 01 | **8/8 — 100%** | Mock 1 weaknesses corrected |
| Mock 2 — Decision & Trap | **25/30 — 83.3%** | New best-fit traps identified |
| Trap Round 02 | **5/6 — 83.3%** | Most Mock 2 weaknesses corrected |
| Storage Micro-Trap | **3/3 — 100%** | Storage redundancy corrected |
| Mock 3 — Final Readiness | **34/40 — 85%** | Final distinctions identified |
| Final Targeted Trap | **7/8 — 87.5%** | Three final clusters corrected |
| Tags vs Policy Micro-Trap | **3/3 — 100%** | Final recurring weakness corrected |

Full question archives are stored in [`../mocks/`](../mocks/).

## Phase 6 Corrected Reasoning Patterns

### Service Models — IaaS Shared Responsibility

```text
IaaS
→ Microsoft: physical infrastructure
→ Customer: guest OS + applications + data
```

**History:** corrected after chapter work → incorrect again in Mock 1 → **RECURRING** → Trap Round 01 2/2 → later mixed retests correct.

**Status:** **CORRECTED / STABLE**.

### Networking — VPN Gateway vs ExpressRoute

```text
Encrypted connection over public Internet
→ VPN Gateway

Dedicated private connectivity
→ ExpressRoute
```

**Status:** Mock 1 incorrect → targeted and later mixed retests correct → **CORRECTED / STABLE**.

### Architecture — Availability Zone vs Sovereign Region

```text
Datacenter-level failure + same region
→ Availability Zone

National / governmental / regulatory isolation
→ Sovereign cloud / region
```

**History:** Mock 1 incorrect → corrected → Mock 2 incorrect again → **RECURRING** → Trap Round 02 and Mock 3 correct.

**Status:** **CORRECTED**.

### Management Tools — Cloud Shell vs Portal / CLI

```text
Graphical browser management
→ Azure Portal

Browser-hosted command environment
→ Azure Cloud Shell

Cross-platform command-line tool
→ Azure CLI
```

**Status:** **CORRECTED / STABLE**.

### Architecture — Resource Hierarchy

```text
Management Group
↓
Subscription
↓
Resource Group
↓
Resource
```

**Status:** Mock 1 incorrect → targeted and mixed retests correct → **CORRECTED / STABLE**.

### Governance — Resource Tags vs Azure Policy

```text
STORE / USE metadata
→ Resource Tags

REQUIRE / ENFORCE / COMPLY
→ Azure Policy
```

**History:** Mock 1 Tags incorrect → corrected → Mock 2 Tags/Policy correct → Mock 3 Tags incorrect → Final Trap Tags incorrect → **RECURRING** → Tags vs Policy Micro-Trap 3/3.

**Status:** **CORRECTED**.

### Management — Azure Arc vs Azure Migrate

```text
KEEP resources where they are + manage through Azure
→ Azure Arc

MOVE workloads to Azure + discover / assess / size / plan
→ Azure Migrate
```

**Status:** Mock 2 confused in both directions → Trap Round 02 2/2 → Mock 3 both directions correct → **CORRECTED / STABLE**.

### Cost — Spot / Reservations / Savings Plan / Pay-as-you-go

```text
Interruptible / eviction-tolerant
→ Spot VMs

Stable + specific configuration + commitment
→ Azure Reservations

Predictable compute spending + flexibility
→ Savings Plan for Compute

No commitment / uncertain usage
→ Pay-as-you-go
```

**Status:** targeted after Mock 2 and Mock 3 → **CORRECTED**.

### Storage — Redundancy Best Fit

```text
LRS → Local
ZRS → Zones
GRS → Secondary Region
GZRS → Zones + Secondary Region
```

**History:** Mock 2 incorrect → Trap Round 02 incorrect → **RECURRING** → Storage Micro-Trap 3/3 → Mock 3 correct.

**Status:** **CORRECTED**.

### Compute / Service Models — VM / IaaS vs App Service / PaaS

```text
Need OS control
→ VM / IaaS

No OS management
→ App Service / PaaS
```

**Status:** Mock 3 errors → Final Targeted Trap 2/2 → **CORRECTED**.

### Governance — Microsoft Purview vs Service Trust Portal

```text
YOUR organization's data estate
→ Microsoft Purview

MICROSOFT audit / compliance evidence
→ Service Trust Portal
```

**Status:** Mock 3 errors → Final Targeted Trap 2/2 → **CORRECTED**.

## Final Patterns to Recheck

| Pattern | Decision Rule |
|---|---|
| Tags vs Policy | **Store/use metadata → Tags; enforce/require → Policy** |
| VM vs App Service | **Need OS control → VM; no OS management → App Service** |
| Reservations vs Savings Plan | **Specific stable configuration → Reservation; flexible compute commitment → Savings Plan** |
| Storage redundancy | **LRS local; ZRS zones; GRS region; GZRS zones + region** |
| Arc vs Migrate | **Manage where it is → Arc; move/assess → Migrate** |
| Zone vs Sovereign | **Datacenter isolation → Zone; national/regulatory isolation → Sovereign** |
| Purview vs Service Trust Portal | **Your data → Purview; Microsoft's compliance evidence → Service Trust Portal** |
| Shared responsibility | **IaaS guest OS → customer** |

## Update Rule for Future Mocks

When a new mistake appears, record:

```text
Topic
Question pattern
My incorrect reasoning
Correct reasoning
Decision rule
Status
```

Statuses:

```text
ACTIVE
→ mistake identified; targeted retest required

CORRECTED
→ targeted retest passed

RECURRING
→ same reasoning error appeared again
```

Do not add questions that were answered correctly unless they expose a particularly important exam trap.

## Final Review Rule

Before the final AZ-900 mock, focus on:

```text
RECURRING
↓
ACTIVE
↓
CORRECTED
```

The goal is not to memorize old answers.

The goal is to make the **decision rule automatic**.
