# Governance Decision Tree

```mermaid
flowchart TD

    A["Need Governance?"] --> B{"What is the requirement?"}

    B -->|Control who can do what| C["Azure RBAC"]

    B -->|Enforce standards| D["Azure Policy"]

    B -->|Prevent deletion| E["Resource Lock"]

    B -->|Organize resources| F["Resource Tags"]
```