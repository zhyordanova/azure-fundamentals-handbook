# Resource Groups

## Definition
A Resource Group is a logical container for Azure resources.

## What Problem Does It Solve?
It groups related resources so they can be organized and managed together.

## Azure Resource Hierarchy
```text
Subscription
    ↓
Resource Group
    ↓
Resource
```

## High-Value Facts
- Every Azure resource belongs to a Resource Group.
- A resource belongs to one Resource Group at a time.
- A Resource Group can contain different resource types.
- Resources in the same Resource Group can be deployed in different Azure regions.

> The location of the Resource Group does **not** require every resource in it to use that same location.

## Decision Factors
```text
Need a logical container for related Azure resources
→ Resource Group
```

## Compare With
```text
Subscription
→ contains Resource Groups

Resource Group
→ contains resources

Resource
→ actual deployed service instance
```

## Exam Reasoning
Do not infer a resource's deployment region from the Resource Group's location.
