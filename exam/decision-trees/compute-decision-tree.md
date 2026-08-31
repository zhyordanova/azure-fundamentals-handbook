# Compute Decision Tree

```mermaid
flowchart TD

    A["Need compute?"] --> B{"What is the workload or goal?"}

    B -->|"Need OS or server control"| VM["Azure Virtual Machine"]
    VM --> C{"What else is required?"}
    C -->|"Scale multiple VM instances"| VMSS["VM Scale Sets"]
    C -->|"Fault / update separation"| AS["Availability Set"]

    B -->|"Cloud-hosted Windows desktop"| AVD["Azure Virtual Desktop"]
    B -->|"Host web app or API without OS management"| APP["Azure App Service"]
    B -->|"Run event-driven code"| FUNC["Azure Functions"]
    B -->|"Run containers"| CONT{"Need Kubernetes orchestration?"}
    CONT -->|Yes| AKS["Azure Kubernetes Service"]
    CONT -->|No| ACI["Azure Container Instances"]
```

## Key Distinctions

```text
Maximum OS control
→ Virtual Machine

Multiple VM instances + scaling
→ VM Scale Sets

VM fault/update separation
→ Availability Set

Physical datacenter isolation within a region
→ Availability Zone

Cloud-hosted Windows desktop for users
→ Azure Virtual Desktop

Managed web app / API hosting
→ App Service

Event-driven code
→ Azure Functions

Simple managed container execution
→ Azure Container Instances

Kubernetes orchestration
→ Azure Kubernetes Service
```

> **Exam rule:** Identify the workload first, then compare control, administrative effort, scaling, and availability requirements.
