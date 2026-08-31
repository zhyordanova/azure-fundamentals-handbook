# Azure Compute Overview

```mermaid
flowchart TD

    COMPUTE["Azure Compute"]

    COMPUTE --> VM["Virtual Machines - IaaS"]
    VM --> VMSS["VM Scale Sets - scaling"]
    VM --> AS["Availability Sets - VM availability"]

    COMPUTE --> AVD["Azure Virtual Desktop - desktop virtualization"]
    COMPUTE --> APP["Azure App Service - managed web apps / APIs"]
    COMPUTE --> FUNC["Azure Functions - event-driven serverless code"]
    COMPUTE --> CONTAINERS["Containerized workloads"]

    CONTAINERS --> ACI["Azure Container Instances - simple container execution"]
    CONTAINERS --> AKS["Azure Kubernetes Service - Kubernetes orchestration"]
```

## Quick Orientation

```text
Need server / OS control
→ Virtual Machine

Need scalable VM capacity
→ VM Scale Sets

Need VM fault/update separation
→ Availability Set

Need cloud-hosted Windows desktop
→ Azure Virtual Desktop

Need managed web app / API hosting
→ App Service

Need event-driven code
→ Azure Functions

Need simple container execution
→ Azure Container Instances

Need Kubernetes orchestration
→ Azure Kubernetes Service
```
