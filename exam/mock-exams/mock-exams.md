# AZ-900 Mock Exams

> Final mixed-mock dashboard and assessment history.

Full question archives are stored in [`../mocks/`](../mocks/).

## Assessment Results

| Assessment | Result | Status | Archive |
|---|---:|---|---|
| Mock 1 — Baseline Mixed Exam | **34/40 — 85%** | Complete | [Open](../mocks/mock-01-baseline.md) |
| Targeted Trap Round 01 | **8/8 — 100%** | Complete | [Open](../mocks/trap-round-01-post-baseline.md) |
| Mock 2 — Decision & Trap Exam | **25/30 — 83.3%** | Complete | [Open](../mocks/mock-02-decision-traps.md) |
| Targeted Trap Round 02 | **5/6 — 83.3%** | Complete | [Open](../mocks/trap-round-02-post-mock-02.md) |
| Storage Redundancy Micro-Trap | **3/3 — 100%** | Complete | [Open](../mocks/storage-redundancy-micro-trap.md) |
| Mock 3 — Final Readiness Exam | **34/40 — 85%** | Complete | [Open](../mocks/mock-03-final-readiness.md) |
| Final Targeted Trap Round | **7/8 — 87.5%** | Complete | [Open](../mocks/final-targeted-trap-round.md) |
| Tags vs Policy Micro-Trap | **3/3 — 100%** | Complete | [Open](../mocks/tags-vs-policy-micro-trap.md) |

## Mixed-Mock Summary

```text
Mock 1 → 34 / 40
Mock 2 → 25 / 30
Mock 3 → 34 / 40

Total → 93 / 110 → 84.5%
```

The score alone is not the readiness criterion. Weak areas identified in the mixed mocks were retested with different wording until the underlying decision rule was demonstrated correctly.

## Final Weak-Area Status

```text
ACTIVE
→ none

RECURRING — UNRESOLVED
→ none
```

Previously weak distinctions that completed targeted remediation:

```text
IaaS Shared Responsibility
VPN Gateway vs ExpressRoute
Availability Zone vs Sovereign Region
Cloud Shell vs Azure Portal / CLI
Azure Resource Hierarchy
Resource Tags vs Azure Policy
Azure Arc vs Azure Migrate
Spot / Reservation / Savings Plan / Pay-as-you-go
Storage Redundancy
VM / IaaS vs App Service / PaaS
Microsoft Purview vs Service Trust Portal
```

See [Wrong Answers Review](../wrong-answers-review/wrong-answers-review.md) for the reasoning history.

## Mock Exam Rules

1. Questions are presented **one at a time**.
2. Questions are written in **English**.
3. The answer is recorded before the next question.
4. Correctness is **not revealed during the exam**.
5. Multi-select questions state the required number of answers.
6. Matching and Yes/No questions are evaluated item by item.
7. Previously weak areas return with **different wording**.
8. Reviews explain the **decision rule**, not only the correct answer.

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

## Review Method

```text
Question
↓
My answer
↓
Correct answer
↓
Why the reasoning failed
↓
Correct decision rule
↓
Status: ACTIVE / CORRECTED / RECURRING
```

Targeted rounds use new wording rather than memorizing the original question.

## Readiness Principle

```text
Mixed-topic performance
+
No unresolved recurring conceptual weakness
+
Known traps solved with correct reasoning
+
Consistent best-fit decisions
```

> **The goal is not to memorize questions. The goal is to make the decision process reliable.**
