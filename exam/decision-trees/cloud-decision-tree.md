# Cloud Concepts Decision Tree

Start with **what type of cloud concept the scenario is testing**, not a trigger word.

```mermaid
flowchart TD
    A["What is the scenario describing?"]
    A --> B["Deployment model"]
    A --> C["Capacity"]
    A --> D["Availability / geography"]
    A --> E["Financial model"]
    A --> F["Execution model"]

    B --> B1{"Which environment?"}
    B1 -->|"Provider-operated cloud"| PUB["Public Cloud"]
    B1 -->|"Dedicated to one organization"| PRI["Private Cloud"]
    B1 -->|"Private/on-prem + public cloud"| HYB["Hybrid Cloud"]

    C --> C1{"What capacity behavior?"}
    C1 -->|"Ability to change capacity"| SCALE["Scalability"]
    C1 -->|"Dynamic response to demand"| ELASTIC["Elasticity"]

    D --> D1{"What is the goal?"}
    D1 -->|"Remain available despite failures"| HA["High Availability"]
    D1 -->|"Distribute geographically"| GEO["Geo-distribution"]

    E --> E1{"How is it paid for?"}
    E1 -->|"Upfront asset purchase"| CAPEX["CapEx"]
    E1 -->|"Ongoing / consumption spending"| OPEX["OpEx"]

    F --> F1{"Manage servers?"}
    F1 -->|"No - run code without server management"| SERVERLESS["Serverless"]
```

## High-Value Distinctions

```text
Public / Private / Hybrid
→ deployment model

Scalability
→ capacity CAN change

Elasticity
→ capacity dynamically follows demand

High Availability
→ reduce downtime / survive failures

Geo-distribution
→ geographic placement

CapEx
→ upfront investment

OpEx
→ ongoing / consumption-based spending

Serverless
→ run code without managing servers
```

## Final Decision Rule

```text
1. Identify the category: deployment, capacity, availability/geography, or finance.
2. Identify the actual requirement.
3. Choose the concept that directly describes that requirement.
```
