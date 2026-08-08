# High Availability

## Definition

High Availability is the ability of a system or service to remain operational and accessible even when failures occur.

The goal is to minimize downtime and ensure that users can continue accessing applications and services.

## Why High Availability Matters

Business applications often need to be available 24 hours a day.

Unexpected downtime can result in:

- Financial loss
- Reduced productivity
- Poor customer experience
- Loss of business reputation

Cloud platforms such as Microsoft Azure provide built-in features that help organizations design highly available solutions.

## How Azure Supports High Availability

Azure provides several features that improve availability, including:

- Availability Zones
- Region Pairs
- Load Balancers
- Geo-redundant Storage
- Virtual Machine Scale Sets

Each feature protects against a different type of failure.

## Service-Level Agreements (SLAs)

Microsoft defines the expected availability of Azure services by using a **Service-Level Agreement (SLA)**.

An SLA specifies the percentage of uptime that Microsoft commits to provide for a service.

Examples include:

- 99.9%
- 99.95%
- 99.99%

Higher availability generally requires designing solutions that use multiple resources instead of relying on a single instance.

## Microsoft Trigger Words

If a question contains words such as:

- uptime
- availability
- SLA
- service interruption
- minimize downtime
- remain available

Think:

> High Availability

## Common Exam Questions

Microsoft frequently asks questions such as:

- What does an SLA define?
- Which cloud benefit keeps applications available?
- Which Azure feature protects against datacenter failure?
- Which Azure feature protects against regional failure?

## Common Mistakes

❌ Thinking High Availability and Scalability are the same.

High Availability ensures a service remains available.

Scalability ensures a service can handle increased workload.

❌ Thinking a higher SLA is achieved automatically.

Many Azure services require multiple instances or additional configuration to achieve higher SLAs.

## Compare With

| High Availability | Scalability |
|-------------------|-------------|
| Keeps services available | Handles increasing workload |
| Focuses on uptime | Focuses on capacity |
| Measured by SLA | Measured by resource growth |

## Exam Tip

Ask what problem the requirement is trying to solve.

If the goal is:

> Keep the service running and minimize downtime

→ **High Availability**

If the goal is:

> Handle increasing workload or demand

→ **Scalability**

High Availability is about **continuity**.

Scalability is about **capacity**.