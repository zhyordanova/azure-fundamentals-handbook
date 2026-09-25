# Governance and Management Decision Tree

Start with the **problem**, not a trigger word.

```mermaid
flowchart TD
    A["What management or governance problem must be solved?"]

    A --> B["Control permissions"]
    A --> C["Enforce resource configuration"]
    A --> D["Prevent deletion / modification"]
    A --> E["Organize with metadata"]
    A --> F["Govern data estate"]
    A --> G["Microsoft compliance documentation"]
    A --> H["Interact with Azure resources"]
    A --> I["Manage resources outside Azure"]
    A --> J["Repeatable deployment from code"]

    B --> RBAC["Azure RBAC"]
    C --> POLICY["Azure Policy"]
    D --> LOCKS["Resource Locks"]
    E --> TAGS["Resource Tags"]
    F --> PURVIEW["Microsoft Purview"]
    G --> TRUST["Service Trust Portal"]
    H --> H1["Portal / Cloud Shell / CLI / PowerShell"]
    I --> ARC["Azure Arc"]
    J --> IAC["Infrastructure as Code / ARM templates"]
```

## High-Value Distinctions

```text
WHO can perform actions?
→ Azure RBAC

WHAT configuration is allowed or required?
→ Azure Policy

Prevent DELETE / MODIFY?
→ Resource Locks

LABEL / ORGANIZE resources?
→ Resource Tags

GOVERN DATA?
→ Microsoft Purview

MICROSOFT COMPLIANCE DOCUMENTS?
→ Service Trust Portal

GUI management?
→ Azure Portal

Browser-hosted shell?
→ Azure Cloud Shell

Cross-platform command line?
→ Azure CLI

PowerShell administration?
→ Azure PowerShell

MANAGE non-Azure / on-prem resources through Azure?
→ Azure Arc

REPEATABLE infrastructure defined in code?
→ IaC / ARM templates
```
