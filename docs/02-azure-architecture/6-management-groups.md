# Management Groups

## Definition
Management Groups provide a level of organization above Azure subscriptions.

## What Problem Does It Solve?
They allow multiple subscriptions to be organized into a hierarchy for management and governance at scale.

## Azure Resource Hierarchy
```text
Management Group
      ↓
Subscription
      ↓
Resource Group
      ↓
Resource
```

## Decision Factors
```text
Need to organize multiple subscriptions
→ Management Group
```

Management Groups do not directly contain Resource Groups; subscriptions sit between them.

## Compare With
| Scope | Main role |
|---|---|
| **Management Group** | Organize subscriptions |
| **Subscription** | Billing/resource boundary containing Resource Groups |
| **Resource Group** | Logical container for resources |

## Exam Reasoning
Ask **what is being organized**. If the answer is multiple subscriptions, think Management Group.
