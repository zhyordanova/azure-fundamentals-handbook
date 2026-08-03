# Region Pairs

## Definition

A Region Pair consists of two Azure Regions within the same Azure Geography.

Microsoft pairs regions to support disaster recovery and improve the resilience of Azure services.

Examples include:

- West Europe ↔ North Europe
- East US ↔ West US

Each Azure Region has a predefined paired region.

## Why Region Pairs Exist

Although Azure Regions are highly reliable, an entire region can become unavailable due to a large-scale incident.

Region Pairs provide an additional layer of resilience by allowing services and data to be replicated between two regions within the same Geography.

This supports business continuity and disaster recovery planning.

## Key Characteristics

Region Pairs:

- Consist of two Azure Regions.
- Always belong to the same Azure Geography.
- Improve disaster recovery capabilities.
- Support regional resilience.
- Help Microsoft prioritize recovery during major outages.

## Typical Scenario

A company hosts its application in **West Europe**.

To improve disaster recovery, critical data is replicated to **North Europe**, which is the paired region.

If an entire Azure Region becomes unavailable, services can be recovered from the paired region.

## Microsoft Trigger Words

If a question contains words such as:

- paired region
- regional disaster recovery
- two regions
- same geography
- regional outage

Think:

> Region Pairs

## Common Exam Questions

Microsoft frequently asks questions such as:

- What is a Region Pair?
- Which Azure feature supports regional disaster recovery?
- In a Region Pair, both regions belong to the same ______.
- Which Azure feature protects against an entire regional failure?

## Common Mistakes

❌ Thinking Region Pairs and Availability Zones are the same.

Availability Zones protect against **datacenter failures**.

Region Pairs protect against **regional failures**.

❌ Thinking paired regions can belong to different Geographies.

Region Pairs always belong to the **same Azure Geography**.

## Compare With

| Region Pair | Availability Zone |
|--------------|-------------------|
| Two Azure Regions | Two or more physically separate datacenters |
| Supports regional disaster recovery | Supports datacenter resilience |
| Same Geography | Same Region |

## Exam Tip

Pay close attention to the scope of the failure.

If Microsoft mentions:

- **one datacenter fails**
- **within a region**

→ Availability Zones

If Microsoft mentions:

- **entire region**
- **paired region**
- **disaster recovery**
- **same geography**

→ Region Pairs