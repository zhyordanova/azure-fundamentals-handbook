# Local Network Gateway

## Definition

A Local Network Gateway is an Azure resource that represents a remote network, typically an on-premises site, when configuring Site-to-Site VPN connectivity.

It stores information such as the remote VPN device address and the remote network address prefixes.

## What Problem Does It Solve?

Azure VPN Gateway needs information describing the remote side of a Site-to-Site VPN. The Local Network Gateway provides that representation.

## Key Characteristics

- Represents the remote/on-premises network
- Stores remote VPN endpoint information
- Stores remote address prefixes
- Works as part of Site-to-Site VPN configuration
- Does not create the VPN tunnel itself

## Decision Factors

Choose Local Network Gateway only when the question asks for the Azure object that **represents the remote/on-premises network** in a Site-to-Site VPN configuration.

For the service that actually provides VPN connectivity, choose **Azure VPN Gateway**.

## Compare With

| Local Network Gateway | Azure VPN Gateway |
|---|---|
| Describes remote network | Provides VPN connectivity |
| Configuration resource | Connectivity service |

## Trade-offs

This is a supporting configuration concept rather than a general networking solution. Do not select it merely because an on-premises network is mentioned.

## Common Mistakes

❌ Treating Local Network Gateway as the VPN tunnel itself.

## Microsoft Trigger Words

- represents on-premises network
- remote VPN site
- Site-to-Site configuration object

## Exam Reasoning

Ask:

> Is the question asking for connectivity, or for the object that describes the remote side?

Remote-side representation → **Local Network Gateway**.
