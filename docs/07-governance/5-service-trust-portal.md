# Service Trust Portal

## Definition

The Microsoft Service Trust Portal provides information and resources about how Microsoft cloud services protect data and meet security, privacy, and compliance requirements.

It provides access to materials such as audit reports and compliance documentation.

## What Problem Does It Solve?

Use the Service Trust Portal when the requirement is to obtain **Microsoft compliance, audit, security, or privacy documentation**.

Think:

```text
Need Microsoft's compliance / audit documentation
→ Service Trust Portal
```

## Decision Factors

```text
Enforce Azure resource configuration
→ Azure Policy

Govern and understand organizational data
→ Microsoft Purview

Find Microsoft compliance and audit reports
→ Service Trust Portal
```

The Service Trust Portal is an information and documentation resource. It does not enforce Azure resource configuration.

## Exam Reasoning

Ask what the organization needs:

```text
A governance rule for Azure resources?
→ Azure Policy

Data governance across the data estate?
→ Microsoft Purview

Microsoft audit / compliance evidence?
→ Service Trust Portal
```

> **Service Trust Portal = Microsoft compliance and audit information.**
