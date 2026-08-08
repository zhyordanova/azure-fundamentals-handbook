# Subscriptions

## Definition

An Azure Subscription is a logical container that provides access to Azure services.

It acts as the primary boundary for:

- Billing
- Resource deployment
- Quotas
- Governance

## Why Subscriptions Exist

Organizations often separate Azure resources into multiple subscriptions to simplify management and cost tracking.

Common examples include:

- Production
- Development
- Testing
- Different departments
- Different customers

Using multiple subscriptions provides better administrative control and financial separation.

## Key Characteristics

An Azure Subscription:

- Contains one or more Resource Groups.
- Is associated with a billing account.
- Defines quotas and service limits.
- Is the primary billing boundary in Azure.

Multiple subscriptions can belong to the same Management Group.

## Azure Resource Hierarchy

```mermaid
flowchart TD
    MG["Management Group"]
    SUB["Subscription ⭐"]
    RG["Resource Group"]
    RES["Resource"]

    MG --> SUB --> RG --> RES
```

A subscription sits between Management Groups and Resource Groups.

## Billing Boundary

Subscriptions provide an important scope for tracking and managing Azure consumption and costs.

Organizations can use separate subscriptions to:

- separate workloads;
- track costs independently;
- apply budgets;
- manage quotas and governance boundaries.

The exact invoice structure depends on the organization's Azure billing agreement.

## Microsoft Trigger Words

If a question contains words such as:

- billing
- invoice
- quota
- subscription
- billing boundary
- multiple subscriptions

Think:

> Azure Subscription

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure component generates separate invoices?
- Which Azure component acts as the billing boundary?
- Where are Azure resources deployed?
- Which Azure component contains Resource Groups?

## Common Mistakes

❌ Thinking a Subscription organizes Azure resources.

Resource Groups organize resources.

Subscriptions organize billing, governance, and quotas.

❌ Thinking billing is performed per Resource Group.

Billing reports and invoices are generated per Subscription.

## Compare With

| Subscription | Resource Group |
|--------------|----------------|
| Billing boundary | Logical resource container |
| Contains Resource Groups | Contains Resources |
| Defines quotas | Organizes related resources |

## Exam Tip

Ask what kind of boundary the scenario needs.

If the requirement involves:

- separating Azure consumption;
- quotas;
- cost tracking;
- independent workload boundaries;

think:

> **Azure Subscription**

If the requirement is only about grouping related resources:

> **Resource Group**