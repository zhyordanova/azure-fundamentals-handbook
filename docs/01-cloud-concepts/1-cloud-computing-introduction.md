# Cloud Computing Introduction

## Definition
Cloud computing is the delivery of computing services over the internet using on-demand resources such as compute, storage, networking, databases, and applications.

## What Problem Does It Solve?
Cloud computing reduces the need to purchase and maintain all infrastructure in advance. Resources can be provisioned when needed and adjusted as requirements change.

## Core Characteristics
- on-demand resources
- scalable capacity
- consumption-based pricing
- provider-managed physical infrastructure
- access to services over a network

## Consumption-Based Model
Cloud services commonly use a consumption-based model: customers pay for the resources they use instead of purchasing all infrastructure upfront.

```text
Use more resources
→ generally pay more

Use fewer resources
→ generally pay less
```

This supports an operational-expenditure model and reduces the need for large upfront infrastructure purchases.

## Cloud Benefits
Cloud services can provide benefits such as:

- **high availability** — design services to remain available despite failures;
- **scalability** — increase or decrease capacity as requirements change;
- **reliability** — design resilient systems that can recover from failures;
- **predictability** — use consistent service, performance, and cost planning capabilities;
- **security and governance** — use cloud controls and services to help protect and govern resources;
- **manageability** — manage cloud resources through portals, command-line tools, APIs, automation, and templates.

## Serverless
Serverless computing lets developers run code without managing the underlying servers or operating system.

```text
Run code in response to events
+
Do not manage servers
→ Serverless
```

Azure Functions is a common Azure serverless compute example.

## Decision Factors
When a scenario describes cloud computing, look for the underlying requirement rather than a single keyword:

```text
Need resources without buying all physical infrastructure upfront
+
Need capacity that can be provisioned as required
→ Cloud computing
```

## Exam Reasoning
Separate the concept from its benefits:

```text
What is being consumed?
→ Cloud services

Pay for usage rather than buying infrastructure upfront?
→ Consumption-based model

Run event-driven code without managing servers?
→ Serverless
```
