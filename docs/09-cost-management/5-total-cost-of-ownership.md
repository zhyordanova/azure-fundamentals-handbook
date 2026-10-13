# Total Cost of Ownership (TCO)

## Definition

**Total Cost of Ownership (TCO)** is the overall cost of acquiring, operating, maintaining, and supporting an IT solution over a defined period.

TCO considers more than the price of an individual Azure service.

## What Problem Does It Solve?

Organizations comparing on-premises infrastructure with cloud services need to account for **all relevant costs**, not just the initial purchase price or monthly compute bill.

Common cost categories include:

| Cost Category | Examples |
|---|---|
| Infrastructure | Servers, storage, networking equipment |
| Facilities | Datacenter space, electricity, cooling |
| Software | Licenses and support agreements |
| Operations | Administration, maintenance, monitoring |
| Migration | Data transfer, modernization, staff training |
| Cloud consumption | Compute, storage, networking, support |

The specific categories depend on the organization's architecture and accounting assumptions.

## TCO vs Azure Cost Estimation

| Requirement | Best-Fit Concept or Tool |
|---|---|
| Compare the **overall cost** of on-premises and cloud solutions | **TCO analysis** |
| Estimate the cost of **planned Azure services** | **Azure Pricing Calculator** |
| Analyze **actual Azure spending** and budgets | **Microsoft Cost Management** |
| Build a **migration business case** and estimate migration savings | **Azure Migrate business case** |

## TCO Example

```text
On-premises solution
→ hardware purchase
→ power and cooling
→ software licenses
→ maintenance
→ IT operations

Azure solution
→ service consumption
→ networking and storage
→ support
→ operations
→ migration / transition costs

Compare totals over the SAME period
→ TCO analysis
```

A lower monthly Azure service estimate does **not** automatically prove a lower TCO. Compare equivalent workloads, service levels, time horizons, and cost assumptions.

## TCO Calculator — Modernization Note

Microsoft previously offered a dedicated **Azure TCO Calculator**. That calculator was scheduled for deprecation in July 2025; do **not** treat it as the current recommended calculator for AZ-900 preparation.

Use the **Azure Pricing Calculator** for projected Azure service costs and **Azure Migrate business case** for migration cost/savings analysis.

The current **AZ-900 skills measured (July 20, 2026)** explicitly mention the **Pricing Calculator** and Azure cost management capabilities, but do **not** list the legacy TCO Calculator as a named exam objective.

## Decision Factors

```text
What is the question asking?

Overall lifetime ownership cost?
→ TCO

Planned Azure monthly service cost?
→ Azure Pricing Calculator

Existing Azure charges / budgets?
→ Microsoft Cost Management

Migration savings / business case?
→ Azure Migrate business case
```

## Common Mistakes

- **TCO = monthly Azure bill.** TCO covers a wider set of costs over time.
- **Azure Pricing Calculator = actual billing.** It produces estimates, not actual spend reports.
- **Microsoft Cost Management = migration cost comparison.** Its primary purpose is analyzing and managing Azure costs.
- **The old TCO Calculator is a current AZ-900 requirement.** It is not explicitly listed in the current published skills measured.

## Exam Reasoning

Focus on the **business requirement** before selecting a tool:

> **Estimate Azure usage → Pricing Calculator. Track actual costs → Cost Management. Compare full ownership costs → TCO analysis.**

## References

- [AZ-900 study guide — skills measured as of July 20, 2026](https://learn.microsoft.com/en-us/credentials/certifications/resources/study-guides/az-900)
- [Azure Pricing Calculator](https://azure.microsoft.com/en-us/pricing/calculator/)
- [Azure Migrate business case](https://learn.microsoft.com/en-us/azure/migrate/concepts-business-case-calculation)
- [Microsoft FinOps Toolkit — TCO Calculator deprecation discussion](https://github.com/microsoft/finops-toolkit/issues/1728)

## Related Topics

- [Azure Pricing Calculator](2-azure-pricing-calculator.md)
- [Microsoft Cost Management](3-microsoft-cost-management.md)
- [Cost Optimization](4-cost-optimization.md)
