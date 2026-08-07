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

## Exam Tip

Ask yourself:

> "Is Microsoft asking me to observe a resource or improve it?"

**Observe it**  
→ Azure Monitor

**Improve or optimize it**  
→ Azure Advisor

The word **recommendation** is the strongest clue for Azure Advisor.