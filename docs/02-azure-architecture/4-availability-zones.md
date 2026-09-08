# Availability Zones

## Definition
Availability Zones are physically separate datacenter locations within an Azure region, with independent supporting infrastructure.

## What Problem Does It Solve?
They help protect workloads from a datacenter-level failure while remaining within the same Azure region.

## Decision Factors
```text
Need isolation from a datacenter failure
within one Azure region
→ Availability Zones
```

## Availability Zone vs Region
| Requirement | Best fit |
|---|---|
| Choose geographic deployment location | **Region** |
| Isolate workload across datacenter locations in the same region | **Availability Zones** |
| Design across separate Azure regions | **Multi-region / regional resiliency** |

## Common Mistake
Availability Zones are not separate Azure regions.

## Exam Reasoning
Identify the failure scope first:

```text
Datacenter / zone failure
→ Availability Zones

Entire regional failure
→ consider a multi-region design
```
