# Azure Region Pairs

## Definition
Many Azure regions are paired with another region within the same geography to support platform resiliency and regional recovery capabilities.

## What Problem Does It Solve?
Region pairing is an Azure platform concept used in regional resiliency and recovery planning for supported services.

## Region Pair vs Availability Zone
```text
Availability Zone
→ separate datacenter location
→ within ONE region

Region Pair
→ relationship between TWO Azure regions
```

## Decision Factors
If the scenario is about datacenter isolation inside a region, choose **Availability Zones**. If it is asking specifically about Azure's paired-region concept, choose **Region Pairs**.

> A regional disaster-recovery architecture is not automatically equivalent to "use a region pair"; service-specific capabilities and architecture still matter.

## Exam Reasoning
Focus on the scope:

```text
Same region
→ Availability Zones

Two paired Azure regions
→ Region Pair
```
