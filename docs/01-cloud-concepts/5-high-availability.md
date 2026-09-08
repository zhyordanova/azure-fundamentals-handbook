# High Availability

## Definition
High availability is the ability of a service to remain available despite failures or disruptions.

## What Problem Does It Solve?
Applications and services may experience hardware, datacenter, or infrastructure failures. High-availability designs reduce downtime by avoiding a single point of failure.

## Azure Context
Azure can support high availability through capabilities such as redundancy, availability zones, load distribution, and resilient architectures.

## SLA Context
A Service Level Agreement (SLA) describes availability commitments for a service. A solution that depends on multiple components must consider the availability of the complete architecture, not just one component.

## High Availability vs Geo-distribution
```text
Keep service available despite failures
→ High Availability

Place workloads/data across geographic locations
→ Geo-distribution
```

Geo-distribution can contribute to resiliency, but the two concepts are not synonyms.

## Exam Reasoning
Ask what the scenario is optimizing:

```text
Reduce downtime / survive component failure
→ High Availability
```
