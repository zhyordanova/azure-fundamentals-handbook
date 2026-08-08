# Cost Optimization

## Definition

Azure provides several pricing options that can help organizations reduce cloud costs when workloads have predictable, flexible, or interruptible requirements.

Common cost optimization options include:

- Azure Reservations
- Azure savings plan for compute
- Azure Spot Virtual Machines

Each option is designed for a different workload pattern.

## Azure Reservations

Azure Reservations can reduce costs when an organization commits to using eligible Azure resources for a defined period.

They are suitable for workloads with predictable and stable usage.

### Typical Scenario

A company knows that a production workload will run continuously for a long period.

Instead of relying entirely on pay-as-you-go pricing, the company can use a reservation to reduce the cost of eligible resources.

### Microsoft Trigger Words

- predictable workload
- long-term usage
- commitment
- reservation
- stable workload

Think:

> Azure Reservations

## Azure Savings Plan for Compute

Azure savings plan for compute can reduce eligible compute costs in exchange for committing to a consistent hourly spend for a defined term.

Compared with a reservation tied to eligible resource usage, a savings plan is designed to provide more flexibility across eligible compute usage.

### Typical Scenario

An organization has predictable compute spending but expects its compute usage to change between eligible services or regions.

Think:

> Azure savings plan for compute

## Azure Spot Virtual Machines

Azure Spot Virtual Machines allow organizations to use unused Azure compute capacity at a reduced price.

However, Azure can evict the VM when the capacity is needed elsewhere.

Spot VMs are therefore suitable for workloads that can tolerate interruptions.

### Typical Use Cases

- Batch processing
- Development and testing
- Large parallel workloads
- Fault-tolerant workloads

They are generally not suitable for workloads that must run continuously without interruption.

## Compare With

| Option | Best For | Key Trade-off |
|--------|----------|---------------|
| Reservations | Predictable long-term usage | Commitment |
| Savings Plan | Predictable compute spend with more flexibility | Spending commitment |
| Spot VMs | Interruptible workloads | Azure can evict the VM |
| Pay-as-you-go | Flexible or uncertain usage | Typically less commitment-based discounting |

## Microsoft Trigger Words

### Reservations

- predictable usage
- long-term
- commitment
- reservation

### Savings Plan

- consistent hourly spend
- compute
- flexible compute usage

### Spot VMs

- unused capacity
- lowest cost
- interruptible
- can be evicted

## Common Exam Questions

Microsoft may ask questions such as:

- Which pricing option is appropriate for predictable long-term workloads?
- Which option provides savings for a consistent amount of compute usage?
- Which VM pricing option can be interrupted by Azure?
- Which option is suitable for fault-tolerant workloads that can tolerate eviction?

## Common Mistakes

❌ Thinking Spot VMs are appropriate for every workload.

Spot VMs can be evicted and should be used only when the workload can tolerate interruptions.

❌ Thinking Reservations and savings plans are identical.

Both can reduce costs through commitment, but they provide different levels of flexibility.

## Exam Tip

Identify the workload pattern first:

**Predictable long-term resource usage**

→ **Reservations**

**Predictable compute spend but need flexibility**

→ **Azure savings plan for compute**

**Can tolerate interruption or eviction**

→ **Spot Virtual Machines**

**Need maximum flexibility without commitment**

→ **Pay-as-you-go**