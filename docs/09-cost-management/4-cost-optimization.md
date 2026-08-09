# Cost Optimization

## Definition

Azure provides several pricing and purchasing options that can help organizations reduce cloud costs when workloads have predictable, flexible, or interruptible requirements.

Important cost optimization options for Azure Fundamentals include:

- Azure Reservations
- Azure Savings Plans
- Azure Spot Virtual Machines

Each option is designed for a different workload pattern.

## Azure Reservations

Azure Reservations provide discounted pricing in exchange for a one-year or three-year commitment for eligible Azure resources.

Reservations are best suited for stable and predictable workloads where the expected resource usage is well understood.

### Typical Scenario

A company expects a production workload to use the same eligible resource configuration continuously for a long period.

Think:

> **Azure Reservations**

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

Azure savings plan for compute provides discounted pricing in exchange for committing to a fixed hourly spend on eligible compute services for one or three years.

Unlike a reservation that is more closely associated with specific eligible resource usage, a savings plan can apply automatically across participating compute services and regions within its scope.

Savings plans are useful for dynamic or evolving compute workloads where usage may move between eligible services, instance families, or regions.

### Typical Scenario

An organization has consistent compute usage/spend but expects its compute usage to change between eligible services or regions.

Think:

> Azure savings plan for compute

## Azure Spot Virtual Machines

Azure Spot Virtual Machines provide access to unused Azure compute capacity at discounted, variable pricing.

Azure can evict Spot VMs when capacity is needed elsewhere or when configured pricing conditions are no longer met.

Spot VMs:

- Can be evicted
- Have no SLA
- Use variable pricing
- Are suitable for interruptible workloads

### Typical Use Cases

- Batch processing
- Development and testing
- Large parallel workloads
- Fault-tolerant workloads

They are generally not suitable for workloads that must run continuously without interruption.

## Compare With

| Option | Best For | Main Trade-off |
|--------|----------|----------------|
| Reservations | Stable, predictable long-term usage | Less flexibility |
| Savings Plan | Consistent compute spend with changing compute usage | Hourly spending commitment |
| Spot VMs | Interruptible and fault-tolerant workloads | Can be evicted; no SLA |
| Pay-as-you-go | Uncertain or flexible usage | No commitment-based discount |

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

Identify the workload pattern.

**Stable and predictable resource usage**

→ **Azure Reservations**

**Consistent compute spend, but usage may change across eligible compute services or regions**

→ **Azure Savings Plan for Compute**

**Workload can tolerate interruption or eviction**

→ **Azure Spot Virtual Machines**

**Usage is uncertain and you do not want a commitment**

→ **Pay-as-you-go**

Remember:

> **Reservation = stable**  
> **Savings Plan = flexible commitment**  
> **Spot = interruptible**