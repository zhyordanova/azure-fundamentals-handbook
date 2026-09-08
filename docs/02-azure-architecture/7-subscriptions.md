# Azure Subscriptions

## Definition
An Azure subscription is a logical Azure boundary associated with billing, quotas, access, and resource organization.

## What Problem Does It Solve?
Subscriptions provide a boundary within which Resource Groups and resources are created and managed.

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

## Key Characteristics
- associated with billing
- subject to service quotas and limits
- contains Resource Groups
- can be organized under a Management Group

## Decision Factors
```text
Need a billing / quota / resource boundary
→ Subscription

Need to organize multiple subscriptions
→ Management Group
```

## Common Mistake
A Subscription is not the same as a Resource Group. A subscription contains Resource Groups.

## Exam Reasoning
Use the hierarchy and identify the required boundary before choosing the answer.
