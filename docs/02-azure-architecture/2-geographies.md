# Azure Geographies

## Definition
An Azure geography is a defined market containing one or more Azure regions and is associated with data-residency and compliance considerations.

## What Problem Does It Solve?
Geographies provide a high-level boundary for organizing Azure regions around market, residency, and compliance requirements.

## Relationship
```text
Geography
   ↓
Region(s)
   ↓
Availability Zones / datacenters
```

## Decision Factors
```text
Worldwide market / residency boundary
→ Geography

Specific Azure deployment location
→ Region
```

## Exam Reasoning
Do not confuse a geography with a region. A geography is the broader boundary; resources are deployed to Azure regions.
