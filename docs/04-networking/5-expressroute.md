# ExpressRoute

## Definition

Azure ExpressRoute is an Azure networking service that extends an on-premises network into the Microsoft cloud over a private connection.

Unlike typical VPN connectivity, ExpressRoute traffic does not traverse the public Internet.

Connectivity can be provided through an ExpressRoute connectivity provider or through supported direct connectivity options.

## Why ExpressRoute Exists

Some organizations require network connectivity that provides:

- Higher reliability
- Lower latency
- Predictable performance
- Increased security
- Compliance with strict regulatory requirements

For these scenarios, an Internet-based VPN connection may not be sufficient.

Azure ExpressRoute provides a dedicated private connection to Azure.

## Characteristics

Azure ExpressRoute provides:

- Private connectivity to Microsoft cloud services
- Traffic that does not traverse the public Internet
- Predictable network performance
- High-bandwidth connectivity options
- Consistent latency
- Built-in connectivity redundancy

## Typical Use Cases

Azure ExpressRoute is commonly used for:

- Large enterprise environments
- Financial institutions
- Government organizations
- Healthcare providers
- Mission-critical business applications

Organizations that require highly reliable and private connectivity often choose ExpressRoute.

## Customer Responsibilities

When using Azure ExpressRoute, the customer is responsible for:

- Configuring network connectivity
- Managing routing
- Working with an ExpressRoute connectivity provider

Microsoft manages:

- Azure infrastructure
- Azure networking services
- ExpressRoute service within Azure

## Microsoft Trigger Words

If a question contains words such as:

- private connection
- does not use the public Internet
- ExpressRoute circuit
- connectivity provider
- predictable latency
- high bandwidth

Think:

> Azure ExpressRoute

## Common Exam Questions

Microsoft frequently asks questions such as:

- Which Azure service provides private connectivity to Microsoft cloud services?
- Which Azure service does not send traffic over the public Internet?
- Which Azure connectivity option uses an ExpressRoute circuit?

## Common Mistakes

❌ Thinking ExpressRoute is simply a faster VPN.

ExpressRoute does not use the public Internet.

It provides a dedicated private connection.

❌ Thinking VPN Gateway and ExpressRoute solve different business problems.

Both connect on-premises networks to Azure.

The difference is **how** they provide connectivity.

## Compare With

| ExpressRoute | Azure VPN Gateway |
|---------------|-------------------|
| Private dedicated connection | Encrypted VPN tunnel |
| Does not use the public Internet | Uses the public Internet |
| Lower latency | Internet latency |
| Higher reliability | Depends on Internet connectivity |
| Enterprise connectivity | General hybrid connectivity |

## Exam Tip

Ask:

> "Does the connection use the public Internet?"

Encrypted connection over the public Internet:

→ **Azure VPN Gateway**

Private connectivity that does not traverse the public Internet:

→ **Azure ExpressRoute**

For AZ-900, this is the most important distinction.