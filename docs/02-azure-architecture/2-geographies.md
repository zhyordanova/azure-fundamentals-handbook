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

## Sovereign Regions
Some Azure regions belong to sovereign or national cloud environments designed for specific regulatory, jurisdictional, or compliance requirements.

Examples include Azure Government and Azure in China.

```text
Standard Azure regions
→ global/public Azure environment

Sovereign cloud regions
→ separate cloud environment
→ specific regulatory / jurisdictional requirements
```

Sovereign regions still use familiar Azure concepts, but service availability and operational boundaries can differ from global Azure.

## Decision Factors
```text
Worldwide market / residency boundary
→ Geography

Specific Azure deployment location
→ Region

Special isolated cloud for regulatory / jurisdictional requirements
→ Sovereign cloud / sovereign region
```

## Exam Reasoning
Do not confuse a geography with a region. A geography is the broader boundary; resources are deployed to Azure regions.

If the scenario emphasizes government, national-cloud, or special jurisdictional requirements, consider **sovereign regions**.
