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

No active weak areas are currently recorded from the completed chapter mocks.

New mistakes from future mixed mocks should be added here first.

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
