# Scalability


## Definition

Scalability is the ability of a system to handle increasing or decreasing workloads by adding or removing resources.

As demand changes, additional resources can be added to maintain performance, or removed when they are no longer needed.

## Why Scalability Matters

Application demand is rarely constant.

Examples include:

- Online stores during Black Friday.
- Ticket sales for popular events.
- Seasonal business applications.
- Business growth over time.

Scalability allows applications to continue performing efficiently without permanently allocating unnecessary resources.

## Types of Scalability

### Vertical Scaling (Scale Up)

Vertical scaling increases the capacity of an existing resource.

Examples include:

- Adding more CPU.
- Adding more memory (RAM).
- Increasing disk capacity.

This approach is typically limited by the maximum size of a single machine.

### Horizontal Scaling (Scale Out)

Horizontal scaling adds additional resource instances.

Examples include:

- Adding more virtual machines.
- Adding more application instances behind a load balancer.

Horizontal scaling generally provides better resilience and supports larger workloads.

## How Azure Supports Scalability

Azure provides several services that support scalability, including:

- Virtual Machine Scale Sets
- Azure App Service
- Azure Kubernetes Service (AKS)
- Azure Functions

Depending on the service, scaling can be performed manually or automatically.

## Microsoft Trigger Words

If a question contains words such as:

- scale
- increase capacity
- additional instances
- more virtual machines
- growing workload

Think:

> Scalability

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which cloud benefit allows applications to handle increasing demand?
- Which Azure service automatically scales identical virtual machines?
- What is the difference between vertical and horizontal scaling?

## Common Mistakes

❌ Thinking Scalability and Elasticity are the same.

Scalability is the ability to increase or decrease resources.

Elasticity is the automatic adjustment of resources based on demand.

❌ Thinking scaling always means adding more virtual machines.

Scaling can also mean increasing the size of an existing resource (vertical scaling).

## Compare With

| Scalability | Elasticity |
|-------------|------------|
| Resources can be increased or decreased | Resources automatically adjust to demand |
| May be manual or automatic | Automatically responds to workload changes |
| Focuses on handling growth | Focuses on adapting dynamically |

## Exam Tip

Look for phrases such as:

- increase capacity
- scale up
- scale out
- growing demand

These usually indicate **Scalability**.

If the question includes the word **automatically**, consider whether the correct concept is **Elasticity** instead.