# Composite SLA

## Definition
A **composite SLA** is the estimated availability of a solution that depends on multiple services or components. The availability of an end-to-end solution can differ from the SLA of any individual Azure service.

This is an **architecture-level calculation**, not a new Azure service.

## What Problem Does It Solve?
An application may depend on several components. Even if each component has a high availability commitment, the complete application may be unavailable when a required dependency fails.

## Sequential Dependencies — All Components Must Work
If **both** independent components must be available for the application to work, multiply their availability probabilities.

```text
Application
→ Service A (required)
→ Service B (required)

Composite availability
= SLA(A) × SLA(B)
```

**Example:**

```text
Service A = 99.95% = 0.9995
Service B = 99.99% = 0.9999

Composite = 0.9995 × 0.9999
          = 0.99940005
          = 99.940005%
          ≈ 99.94%
```

**Decision rule:** More required dependencies can **reduce** end-to-end availability.

## Parallel Redundancy — At Least One Component Must Work
If either of **two independent, equivalent components** can keep the service available, calculate the probability that **both fail** and subtract it from 1.

```text
Service A OR Service B
→ application remains available

Combined availability
= 1 − (1 − SLA(A)) × (1 − SLA(B))
```

**Example:** Two independent components, each with 99.95% availability:

```text
Failure probability of each = 0.0005

Combined = 1 − (0.0005 × 0.0005)
         = 0.99999975
         = 99.999975%
```

**Decision rule:** Genuine redundancy can **increase** availability.

## Compare the Two Scenarios

| Requirement | Calculation | Expected Effect |
|---|---|---|
| **A AND B** must both work | `A × B` | Lower than either individual SLA |
| **A OR B** is sufficient | `1 − (1 − A) × (1 − B)` | Higher than either individual SLA, if failures are independent |

## Assumptions and Limitations
- Convert percentages to **decimal probabilities** before calculating.
- The formulas assume **independent failures**. Shared dependencies and correlated outages can invalidate a simple multiplication.
- Parallel redundancy works only when either component can actually serve the workload, with appropriate routing or failover.
- An Azure service's published SLA is a contractual commitment with specific conditions; these examples are **illustrative estimates**, not a guaranteed end-to-end Azure SLA.
- Do not assume that deploying two instances automatically creates independent redundancy.

## Common Mistakes
- **A high SLA for one component guarantees the whole application SLA.** It does not.
- **Adding a required service improves availability.** It can lower the combined availability.
- **Two components always mean higher availability.** Only if the architecture can continue when one fails.
- **99.95% × 99.99% = 99.94% without conversion.** Convert to decimals first.

## Microsoft Trigger Words

| Trigger Words / Scenario | Think |
|---|---|
| both services required, dependency chain, all components must work | **Sequential composite SLA** |
| either instance can serve, redundant independent components, failover | **Parallel availability** |
| shared dependency, common failure | **Independence assumption may not hold** |
| published availability commitment | **Service SLA and its conditions** |

## Exam Reasoning

```text
Does the solution require ALL components?
→ Sequential: multiply availability

Can ANY ONE independent redundant component keep it working?
→ Parallel: 1 − product of failure probabilities

Are there shared dependencies?
→ Do not assume independence
```

> **Required dependencies reduce combined availability; independent redundancy can improve it.**

For the broader concept of keeping applications available despite failures, see [High Availability](5-high-availability.md).
