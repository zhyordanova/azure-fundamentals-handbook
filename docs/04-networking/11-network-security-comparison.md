# NSG vs Azure Firewall vs Azure DDoS Protection

## Definition

These services address **different network security requirements**:

- **Network Security Group (NSG)** controls allowed and denied inbound and outbound network traffic at the subnet or network-interface level.
- **Azure Firewall** is a managed, stateful network firewall for centralized traffic inspection and filtering, including network and application rules.
- **Azure DDoS Protection** helps protect supported public-facing Azure resources against distributed denial-of-service attacks that attempt to overwhelm network availability.

## What Problem Does It Solve?

Choose the control based on the actual threat or requirement: **traffic filtering**, **centralized firewall inspection**, or **volumetric DDoS mitigation**.

## Compare With

| Decision Factor | NSG | Azure Firewall | Azure DDoS Protection |
|---|---|---|---|
| Main purpose | Allow or deny traffic | Centralized managed firewall and inspection | Mitigate DDoS attacks against public-facing resources |
| Typical scope | Subnet or NIC | Centralized network architecture, often hub-and-spoke | Protection associated with eligible public IP resources and supported deployment models |
| Common rules / capabilities | Source, destination, protocol, port, priority | Network and application rules, FQDN-based filtering, logging | DDoS detection and mitigation |
| Exam clue | Allow HTTPS; block a port; inbound/outbound rules | Centralized filtering; application/FQDN rules; managed firewall | Volumetric attack; DDoS mitigation; public endpoint availability |

## Decision Factors

```text
Allow / deny traffic by IP, port, protocol
at subnet or VM network interface
→ NSG

Centralized managed firewall
with network and application filtering
→ Azure Firewall

Protect public-facing services
against distributed denial-of-service attacks
→ Azure DDoS Protection
```

## Best-Fit Scenarios

- Allow HTTPS (TCP 443) to a subnet and deny unwanted inbound traffic → **NSG**.
- Apply centralized network and application filtering for workloads across multiple subnets → **Azure Firewall**.
- Improve resilience of eligible public-facing Azure resources against volumetric DDoS attacks → **Azure DDoS Protection**.

## Trade-offs

- NSGs are useful for subnet/NIC-level traffic controls but are **not a replacement for a centralized application-aware firewall**.
- Azure Firewall provides broader centralized filtering but introduces service cost and architecture considerations.
- DDoS Protection is **not a general allow/deny rule engine** and does not replace NSGs or Azure Firewall.
- These controls can **complement** each other; they are not mutually exclusive.

## Common Mistakes

- Choosing **Azure Firewall** when the requirement only asks for a simple subnet-level port rule.
- Choosing **NSG** when the requirement explicitly asks for centralized application/FQDN-based filtering.
- Choosing **Azure Firewall or NSG** as the primary answer to a **volumetric DDoS attack** scenario.
- Assuming DDoS Protection secures every resource in an Azure region automatically.

## Microsoft Trigger Words

| Trigger Words / Scenario | Think |
|---|---|
| allow/deny inbound or outbound, TCP/UDP port, subnet, NIC | **NSG** |
| managed firewall, centralized inspection, FQDN/application rules | **Azure Firewall** |
| volumetric DDoS attack, mitigate denial-of-service, public IP protection | **Azure DDoS Protection** |

## Exam Reasoning

First ask **what problem is being solved**: controlling ordinary network flows, centrally inspecting traffic, or mitigating a denial-of-service attack. Then choose the **least complex service that satisfies the stated requirement**.

> **NSG = traffic rules; Azure Firewall = centralized firewall; DDoS Protection = attack mitigation.**
