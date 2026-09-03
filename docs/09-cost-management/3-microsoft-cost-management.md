# Microsoft Cost Management

## Definition

Microsoft Cost Management provides tools to **analyze, monitor, and manage Azure spending**.

It focuses on costs associated with resources that are already being used.

---

## What Problem Does It Solve?

Organizations need visibility into actual cloud spending so they can understand:

- how much they are spending;
- which resources or areas drive the cost;
- how spending changes over time;
- whether spending is approaching expected thresholds.

---

## Key Capabilities

### Cost Analysis

Cost Analysis provides views of actual spending and helps identify trends and cost drivers.

Think:

> **Analyze actual Azure costs → Cost Analysis**

### Budgets and Alerts

A budget defines a spending threshold for monitoring purposes.

Alerts can notify relevant users when configured budget thresholds are reached.

```text
Budget
→ define expected spending threshold

Alert
→ notify when threshold is reached
```

> **A budget is not a hard spending limit.** Reaching a budget threshold does not automatically stop Azure resources.

### Tags and Cost Analysis

Resource tags can help group and filter cost information, for example by department, environment, or project.

Tags themselves are covered in [Resource Tags](../07-governance/3-resource-tags.md).

---

## Decision Factors

Ask what the organization needs to do with **actual spending**:

```text
Understand current / historical cost
→ Cost Analysis

Track spending against a threshold
→ Budget

Receive threshold notification
→ Alert
```

If the resources do not exist yet and the requirement is only to estimate expected cost, use the Azure Pricing Calculator instead.

---

## Microsoft Cost Management vs Azure Pricing Calculator

| Requirement | Best Fit |
|---|---|
| Estimate a planned Azure solution | **Azure Pricing Calculator** |
| Analyze actual Azure spending | **Microsoft Cost Management** |
| Investigate cost trends and drivers | **Microsoft Cost Management** |
| Configure a spending threshold and notification | **Budget / Alert in Cost Management** |

---

## Common Mistakes

### Budget vs Spending Limit

```text
Budget threshold reached
→ alert / visibility
→ NOT automatic resource shutdown
```

### Cost Management vs Azure Advisor

```text
Analyze what you are spending
→ Microsoft Cost Management

Receive recommendations to improve cost efficiency
→ Azure Advisor
```

---

## Exam Reasoning

Start with the goal:

```text
PLANNED cost?
→ Pricing Calculator

ACTUAL spending?
→ Microsoft Cost Management

SPENDING THRESHOLD?
→ Budget + Alert

OPTIMIZATION RECOMMENDATION?
→ Azure Advisor
```
