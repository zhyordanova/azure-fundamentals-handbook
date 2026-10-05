# AZ-900 Mock Exams

> Structure and tracking for the final mixed AZ-900 practice exams.

This file is **not a duplicate question bank**.

Chapter-level mocks validate individual topics. Final mixed mocks test whether concepts can be distinguished **across chapters** under Microsoft-style wording.

---

## Purpose

The final mixed mocks test:

```text
Knowledge
+
Decision reasoning
+
Question-pattern recognition
+
Trap resistance
```

Use together with:

- `concept-map.md` — concept relationships
- `trigger-words.md` — confirmation clues
- `microsoft-patterns.md` — question-solving patterns
- `wrong-answers-review.md` — weak areas and corrected traps
- `decision-trees/` — best-fit reasoning by topic

## Mock Exam Rules

1. Questions are presented **one at a time**.
2. Questions are written in **English**.
3. The answer is recorded before the next question.
4. Correctness is **not revealed during the exam**.
5. The full review is provided after the final answer.
6. Multi-select questions state the required number of answers.
7. Matching and Yes/No questions are evaluated item by item.
8. Previously identified weak areas return with **different wording**.
9. Questions mix topics rather than follow chapter order.
10. Reviews explain the **decision rule**, not only the correct letter.

## Question Formats

| Format | What It Tests |
|---|---|
| **Single choice — Best answer** | Best-fit reasoning |
| **Choose TWO / THREE** | Independent evaluation of options |
| **Yes / No** | Precision and absolute wording |
| **Matching** | Classification and concept boundaries |
| **Scenario** | Requirement + scope + constraints |
| **Responsibility** | Customer vs Microsoft |
| **Scope / inheritance** | Where permissions, rules, or protections apply |

## Coverage Model

| Area | High-Value Topics |
|---|---|
| **Cloud Concepts** | Public/Private/Hybrid, HA, scalability, elasticity, CapEx/OpEx, consumption model |
| **Azure Architecture** | Geography, regions, zones, region pairs, hierarchy, ARM |
| **Compute** | VM, VMSS, App Service, Functions, containers, ACI, AKS, AVD |
| **Networking** | VNet, subnet, NSG, peering, VPN Gateway, ExpressRoute, Bastion, DNS |
| **Storage** | Storage services, redundancy, tiers, migration and file movement |
| **Identity & Security** | Entra ID, RBAC, MFA, passwordless, SSO, Conditional Access, Zero Trust |
| **Governance & Management** | Policy, locks, tags, Purview, management tools, Arc, IaC |
| **Monitoring** | Monitor, Application Insights, Log Analytics, Advisor, Service Health |
| **Cost Management** | Pricing Calculator, Cost Management, budgets, cost factors, optimization |
| **Service Models** | IaaS/PaaS/SaaS classification and shared responsibility |

A single mock does not need equal numbers from every chapter, but the **series of mocks must cover all areas**.

## Required Trap Coverage

Final mocks must revisit the patterns recorded in `wrong-answers-review.md`.

| Trap | What Must Be Tested |
|---|---|
| Owner vs Contributor | Resource management vs access management |
| Existing RBAC assignment | Permission + scope, not creator |
| Hybrid Identity vs SSO | Identity location vs sign-in frequency |
| SaaS responsibility | Less responsibility ≠ zero responsibility |
| IaaS guest OS | Customer responsibility |
| Microsoft 365 | SaaS classification |
| Administrative actions | Requirement decides RBAC vs Policy vs Lock |
| CanNotDelete vs ReadOnly | Delete-only vs modify+delete protection |
| Storage changeability | Configurable setting vs resource identity/placement |

Use **new wording**, not the old question verbatim.

# Final Mixed Mock Plan

## Mock 1 — Baseline Mixed Exam

**Goal:** Measure performance after the handbook and exam-layer upgrades.

```text
40 questions
```

Coverage:

```text
All major AZ-900 areas
+
multiple question formats
+
known traps
```

After completion, record:

```text
Score
Incorrect questions
Reasoning errors
New weak areas
Recurring weak areas
```

Do not modify the handbook because of a single mistake unless the review reveals an actual content gap.

## Mock 2 — Decision & Trap Exam

**Goal:** Test distinctions rather than definitions.

```text
30 questions
```

Emphasize:

```text
best fit
scope / inheritance
least administration
lowest valid cost
similar Azure services
responsibility
can / cannot
notification vs enforcement
```

At least half of the questions should require eliminating plausible distractors.

## Mock 3 — Final Readiness Exam

**Goal:** Simulate a final mixed assessment after weak-area remediation.

```text
40 questions
```

Requirements:

```text
No chapter ordering
No repeated questions from Mock 1
Previously missed concepts use different wording
Mix single-select and multi-part formats
```

Take this mock **after** targeted trap rounds for active weaknesses found in Mock 1 or Mock 2.

# Result Tracking

## Mock 1 — Baseline Mixed Exam

**Status:** Not started

| Metric | Result |
|---|---|
| Score | — |
| Correct | — |
| Incorrect | — |
| New weak areas | — |
| Recurring weak areas | — |
| Targeted retest required | — |

### Incorrect Questions

_To be populated after the mock._

### New Patterns Discovered

_To be populated after the review._

## Mock 2 — Decision & Trap Exam

**Status:** Not started

| Metric | Result |
|---|---|
| Score | — |
| Correct | — |
| Incorrect | — |
| New weak areas | — |
| Recurring weak areas | — |
| Targeted retest required | — |

### Incorrect Questions

_To be populated after the mock._

### New Patterns Discovered

_To be populated after the review._

## Mock 3 — Final Readiness Exam

**Status:** Not started

| Metric | Result |
|---|---|
| Score | — |
| Correct | — |
| Incorrect | — |
| New weak areas | — |
| Recurring weak areas | — |
| Targeted retest required | — |

### Incorrect Questions

_To be populated after the mock._

### Final Readiness Notes

_To be populated after the final review._

# Review Format

After each mock, review every incorrect question using:

```text
Question
↓
My answer
↓
Correct answer
↓
Why my reasoning failed
↓
Correct decision rule
↓
Status: ACTIVE / CORRECTED / RECURRING
```

Then update `wrong-answers-review.md`.

Do **not** add every correct question to the repository.

The repository should preserve:

```text
exam structure
+
mistakes
+
decision rules
+
progress
```

not a transcript of every practice session.

# Targeted Trap Round Rule

Create a targeted trap round when:

```text
a concept is missed
OR
the same reasoning error appears again
```

Recommended size:

```text
3–5 questions
```

Use different wording and different scenarios.

If passed:

```text
ACTIVE
→ CORRECTED
```

If the same error appears again:

```text
ACTIVE / CORRECTED
→ RECURRING
```

# Readiness Principle

A high score alone is not enough.

Final readiness means:

```text
Strong mixed-mock performance
+
No recurring conceptual weakness
+
Known traps are solved with correct reasoning
+
Best-fit decisions are consistent
```

> **The goal is not to memorize questions. The goal is to make the decision process reliable.**
