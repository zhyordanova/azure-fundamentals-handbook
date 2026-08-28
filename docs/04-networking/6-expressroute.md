# Azure ExpressRoute

## Definition

Azure ExpressRoute extends an on-premises network into the Microsoft cloud over a private connection through a connectivity provider. ExpressRoute traffic does not traverse the public Internet.

## What Problem Does It Solve?

ExpressRoute is designed for hybrid connectivity scenarios that require a private network path and can benefit from higher bandwidth, more predictable latency, and enterprise-grade connectivity.

## Key Characteristics

- Private connectivity to Microsoft cloud services
- Does not traverse the public Internet
- Higher bandwidth options
- More predictable latency than Internet-based connectivity
- Connectivity provider or colocation dependency

## Decision Factors

Choose ExpressRoute when the scenario requires or strongly prioritizes:

- private connectivity that does not traverse the public Internet;
- predictable latency;
- higher throughput;
- production hybrid connectivity with stricter performance or compliance requirements.

Do not choose ExpressRoute only because it is technically capable of connecting on-premises to Azure. If an encrypted VPN satisfies the requirement and the scenario prioritizes lower cost or simpler setup, VPN Gateway can be the better answer.

## Best-Fit Scenarios

- Large or latency-sensitive hybrid workloads
- High-volume data transfer
- Private enterprise connectivity
- Workloads with strict connectivity or compliance requirements

## Compare With

| Decision Factor | ExpressRoute | VPN Gateway |
|---|---|---|
| Path | Private | Public Internet with encryption |
| Typical cost | Higher | Lower |
| Latency | More predictable | Internet-dependent |
| Throughput | Higher options available | Lower maximum options |
| Setup | Provider/circuit dependencies | Usually faster to deploy |

## Trade-offs

ExpressRoute provides stronger connectivity characteristics but at greater cost and operational complexity. The exam may therefore prefer VPN Gateway when ExpressRoute capabilities are unnecessary for the stated business requirement.

## Common Mistakes

❌ Treating ExpressRoute as simply a faster VPN.

❌ Choosing the highest-capability option instead of the best-fit option.

## Microsoft Trigger Words

- private connection
- does not traverse public Internet
- predictable latency
- high bandwidth
- ExpressRoute circuit

## Exam Reasoning

Ask:

> Which requirement would fail if I used VPN Gateway instead?

If the answer is **none**, and the question emphasizes cost or administration, reconsider ExpressRoute.
