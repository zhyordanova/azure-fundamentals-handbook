# Region Pairs

## Definition

A Region Pair consists of two Azure Regions that Microsoft associates with each other for specific resiliency capabilities.

Some Azure Regions have a predefined paired region, while other Azure Regions are nonpaired.

Paired regions are usually located within the same Azure Geography, although exceptions exist.

## Why Region Pairs Exist

Although Azure Regions are highly reliable, an entire region can become unavailable due to a large-scale incident.

Region Pairs provide an additional layer of resilience by allowing services and data to be replicated between two regions within the same Geography.

This supports business continuity and disaster recovery planning.

## Key Characteristics

Region Pairs:

- Consist of two associated Azure Regions.
- Are used by some Azure services for geo-replication and geo-redundancy.
- Can support disaster recovery strategies.
- Can support prioritized recovery and staggered platform updates.
- Are not available for every Azure Region.

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

❌ Thinking every Azure Region has a paired region.

Many Azure Regions are nonpaired.

❌ Thinking using a Region Pair automatically provides disaster recovery.

A resilient multi-region solution must still be designed and configured appropriately.

❌ Thinking Region Pairs and Availability Zones are the same.

Availability Zones provide isolation within a Region.

Region Pairs involve two associated Azure Regions.

## Compare With

| Region Pair | Availability Zone |
|--------------|-------------------|
| Two Azure Regions | Two or more physically separate datacenters |
| Supports regional disaster recovery | Supports datacenter resilience |
| Same Geography | Same Region |

## Exam Tip

First identify the scope:

**Failure within one Region**

→ Availability Zones

**Disaster recovery across Regions**

→ Multi-region architecture

If the question specifically mentions:

- paired regions;
- Microsoft-defined regional pairing;
- prioritized regional recovery;

→ **Region Pair**

Do not assume that every Azure Region has a pair.