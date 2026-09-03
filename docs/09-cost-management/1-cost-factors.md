# Factors Affecting Azure Costs

## Definition

Azure costs vary according to **what you deploy, how much you use, where it runs, and how it is purchased**.

Understanding these factors helps explain why two technically similar Azure solutions can have different costs.

## Main Cost Factors

### Resource Type and Size

Different Azure services use different pricing meters, and larger or higher-performance configurations generally cost more.

```text
Different service / SKU / size
→ different price
```

### Consumption

Azure commonly uses a consumption-based model.

```text
More usage
→ higher cost

Less usage
→ lower cost
```

The exact meter depends on the service, such as compute time, storage consumed, operations, or data transfer.

### Azure Region

Prices can differ between Azure regions because operating costs vary by location.

```text
Same resource
+
different Azure region
→ price may differ
```

Region selection can therefore affect both technical requirements and cost.

### Data Transfer

Network traffic can affect Azure costs.

For AZ-900, remember the general pattern:

```text
Inbound data transfer to Azure
→ often free

Outbound data transfer from Azure
→ may incur charges
```

Actual charges depend on the service, destination, and billing zone.

### Pricing and Purchasing Options

The purchasing model can also affect cost.

Examples include:

- pay-as-you-go pricing;
- reservations;
- Azure savings plans for compute;
- Spot Virtual Machines.

These options solve different workload and commitment requirements and are covered in [Cost Optimization](4-cost-optimization.md).

### Marketplace Solutions

Azure Marketplace solutions can include charges from third-party providers in addition to Azure infrastructure charges.

The third-party provider determines the pricing model for its offering.

## Decision Factors

When a question asks **why Azure costs differ**, identify which variable changed:

```text
WHAT was deployed?
→ resource type / size

HOW MUCH was used?
→ consumption

WHERE was it deployed?
→ region

WHERE is data moving?
→ network transfer

HOW is it purchased?
→ pricing / purchasing option
```

## Common Mistakes

### Assuming the Same Service Costs the Same Everywhere

Azure pricing can vary by region.

### Assuming All Network Transfer Is Free

Inbound transfer is often free, while outbound transfer may be charged.

### Confusing Cost Factors With Cost Tools

Cost factors explain **what influences the price**.

They do not replace tools used to estimate or analyze spending:

```text
Estimate planned cost
→ Azure Pricing Calculator

Analyze actual spending
→ Microsoft Cost Management
```

## Exam Reasoning

For cost-factor questions, use:

```text
WHAT + HOW MUCH + WHERE + HOW PURCHASED
→ Azure cost
```

If the question instead asks for a tool, determine whether the requirement is about **planned cost** or **actual spending**.
