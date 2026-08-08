# Availability Zones

## Definition

An Availability Zone is a physically separate datacenter within an Azure Region.

Each Availability Zone has its own independent:

- Power supply
- Cooling
- Networking

This physical separation helps protect applications and services from datacenter-level failures.

## Why Availability Zones Exist

Even within a single Azure Region, hardware failures or power outages can occur.

Availability Zones reduce the impact of these failures by distributing resources across physically separate datacenters.

If one datacenter becomes unavailable, resources deployed in another Availability Zone can continue operating.

## Key Characteristics

Availability Zones:

- Exist within a single Azure Region.
- Are physically separated from each other.
- Have independent power, cooling, and networking.
- Improve application resilience and availability.
- Can be combined with Load Balancers for higher availability.

## Typical Scenario

A company deploys two virtual machines:

- VM1 → Zone 1
- VM2 → Zone 2

If Zone 1 becomes unavailable due to a power failure, VM2 can continue serving users.

This helps minimize application downtime.

## Microsoft Trigger Words

If a question contains words such as:

- physically separate datacenters
- one datacenter fails
- within a region
- datacenter failure
- fault isolation

Think:

> Availability Zones

## Common Exam Questions

Microsoft frequently asks questions such as:

- What are Availability Zones?
- Which Azure feature protects against a datacenter failure?
- Which Azure component consists of physically separate datacenters within one region?

## Common Mistakes

❌ Thinking Availability Zones protect against an entire regional outage.

Availability Zones only provide protection **within a single Azure Region**.

❌ Thinking Availability Zones are the same as Region Pairs.

Availability Zones protect against **datacenter failures**.

Region Pairs protect against **regional failures**.

## Compare With

| Availability Zone | Region Pair |
|-------------------|-------------|
| Protects against datacenter failure | Protects against regional failure |
| Exists inside one Region | Consists of two Regions |
| Physically separate datacenters | Two Regions in the same Geography |

## Exam Tip

Identify the **scope of the failure**.

If the requirement protects against a failure within one Azure Region:

> **Availability Zones**

If the requirement is about resilience across multiple Azure Regions:

> Think about a multi-region disaster recovery design.

Remember:

**Availability Zone = datacenter-level isolation within a Region.**