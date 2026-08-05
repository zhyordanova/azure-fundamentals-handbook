# Azure Resource Hierarchy

```mermaid
flowchart TD
    MG["Management Group"]
    SUB["Subscription"]
    RG["Resource Group"]
    RES["Resource"]

    MG --> SUB
    SUB --> RG
    RG --> RES
```