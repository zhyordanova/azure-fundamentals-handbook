# Azure Advisor

## Definition

Azure Advisor is a personalized cloud consultant that analyzes Azure resource configurations and usage and provides recommendations for improving Azure environments.

Unlike Azure Monitor, which collects telemetry and alerts about current conditions, Azure Advisor focuses on recommendations for optimization.

## Why Azure Advisor Exists

Azure environments can contain many resources, and it can be difficult to identify configuration improvements manually.

Azure Advisor analyzes deployed resources and recommends actions that can help organizations:

- Reduce costs
- Improve performance
- Increase reliability
- Improve operational efficiency
- Strengthen security posture

## Recommendation Categories

Azure Advisor provides recommendations across several areas.

### Cost

Helps identify opportunities to reduce unnecessary spending.

Examples:

- Underutilized resources
- Resources that could be resized
- Opportunities to reduce costs

### Performance

Suggests changes that can improve resource performance.

### Reliability

Provides recommendations that can improve application and infrastructure resilience.

### Operational Excellence

Suggests improvements to deployment, management, and operational processes.

### Security

Security-related recommendations can help identify opportunities to improve the security posture of Azure resources.

## Typical Use Cases

Azure Advisor is commonly used for:

- Finding underutilized resources
- Identifying cost-saving opportunities
- Improving resource performance
- Improving reliability
- Reviewing Azure best-practice recommendations

## Decision Factors

Choose Azure Advisor when the requirement is to identify how existing Azure resources could be improved.

Advisor answers:

> **What should I change?**

Azure Monitor answers:

> **What is happening?**

Example:

```text
CPU is currently above a threshold
→ Azure Monitor

A VM is consistently underutilized and you want a cost-saving recommendation
→ Azure Advisor
```

## Microsoft Trigger Words

If a question contains words such as:

- recommendations
- optimize
- best practices
- underutilized
- reduce cost
- improve performance

Think:

> Azure Advisor

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service provides optimization recommendations?
- Which Azure service identifies underutilized resources?
- Which Azure service recommends ways to reduce Azure costs?
- Which Azure service provides best-practice recommendations?

## Common Mistakes

❌ Thinking Azure Advisor monitors CPU and generates threshold alerts.

Azure Monitor handles metrics, logs, and alerts.

Azure Advisor provides recommendations.

❌ Thinking Azure Advisor is used to estimate the cost of a future Azure deployment.

The Azure Pricing Calculator estimates expected costs before deployment.

Azure Advisor analyzes existing Azure resources and recommends improvements.

## Compare With

| Azure Advisor | Azure Monitor |
|---------------|---------------|
| Provides recommendations | Collects telemetry |
| Identifies optimization opportunities | Provides metrics, logs, and alerts |
| Helps improve existing resources | Monitors resource behavior |

## Exam Reasoning

Ask:

> **Am I observing a condition or looking for an improvement recommendation?**

```text
OBSERVE
→ Azure Monitor

IMPROVE / OPTIMIZE
→ Azure Advisor
```

Do not confuse Advisor with the Pricing Calculator. Advisor analyzes **existing resources**; the Pricing Calculator estimates costs for a planned Azure solution.
